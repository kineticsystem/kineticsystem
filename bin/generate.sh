#!/bin/bash -e

# Writes README.md: one row per StepIt repository, with the badge of each of
# its GitHub Actions workflows. The workflows come from the GitHub API, so a
# new workflow appears the next time this runs; a new repository goes into
# REPOSITORIES below. Only public repositories with CI are shown: a listed
# repository that is private, or has no workflow that has ever run, is left
# out, and appears once it has. Needs gh, logged in.
#
#     ./bin/generate.sh && git commit -am "Update the badges" && git push

OWNER=kineticsystem

# The repositories, in groups: "group|name|role". The role is shown as is.
REPOSITORIES=(
    "The Rig|stepit-macro|The whole rig in one container: the modules, the behaviors and objectives, and StepIt UI."
    "The Modules|stepit-motors|The robot: ROS 2 control of the stepper motors, and the firmware of the Teensy."
    "The Modules|stepit-freezer|The Freezer board, which fires the cameras and the flashes, and its firmware."
    "The Modules|stepit-camera|The ROS 2 driver of the camera."
    "The Modules|stepit-commander|The action server that runs the objectives, behavior trees."
    "The Modules|stepit-editor|The web editor of the objectives."
    "The Libraries|framed-serial|Framed, CRC-checked messages over a serial port, for StepIt Motors and StepIt Freezer."
    "The Libraries|serial|The serial port library, our fork, branch \`ros2\`."
    "The Libraries|BehaviorTree.ROS2|BehaviorTree.CPP for ROS 2, our fork, branch \`humble\`, for the commander."
    "Around the Rig|stepit-grader|A photo editor for the tones and colours of a picture."
    "Around the Rig|raw-converter|Converts the camera's raw files, e.g. Canon CR2, to DNG for Lightroom."
    "Around the Rig|stepit-stacker|Focus stacking of the rig's sessions."
)

cd "$(dirname "$(readlink -f "$0")")/.."

# The cell of a repository: a badge per workflow that has run at least once,
# or nothing.
function badges() {
    local name=$1 workflows path workflow cell=""
    workflows=$(gh api "repos/$OWNER/$name/actions/workflows" -q '.workflows[] | select(.state == "active") | "\(.name)|\(.path)"')
    if [ -z "$workflows" ]; then
        return
    fi
    while IFS='|' read -r workflow path; do
        local file=${path##*/}
        if [ "$(gh run list -R "$OWNER/$name" -w "$file" -L 1 --json databaseId -q length)" = 0 ]; then
            continue
        fi
        local url="https://github.com/$OWNER/$name/actions/workflows/$file"
        cell+="[![$workflow]($url/badge.svg)]($url) "
    done <<< "$workflows"
    cell=${cell% }
    echo "$cell"
}

{
    echo "# Global Status Report"
    echo
    echo "The CI status of the StepIt projects. A red badge is a failing workflow: click it to see why."
    group=""
    for entry in "${REPOSITORIES[@]}"; do
        IFS='|' read -r this name role <<< "$entry"
        if [ "$(gh api "repos/$OWNER/$name" -q .visibility)" != public ]; then
            continue
        fi
        cell=$(badges "$name")
        if [ -z "$cell" ]; then
            continue
        fi
        if [ "$this" != "$group" ]; then
            group=$this
            echo
            echo "## $group"
            echo
            echo "| Repository | Role | CI |"
            echo "|---|---|---|"
        fi
        echo "| [$name](https://github.com/$OWNER/$name) | $role | $cell |"
    done
} > README.md

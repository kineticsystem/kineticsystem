# Repos Status

The CI of every public StepIt repository on one page. Each badge is the last run of a GitHub Actions workflow on the default branch of its repository; click it to open the runs. A red badge is a workflow to look at.

[`bin/generate.sh`](bin/generate.sh) writes this page from the GitHub API. Run it again after adding a repository to its list, or a workflow to a repository.

## The Rig

| Repository | Role | CI |
|---|---|---|
| [stepit-macro](https://github.com/kineticsystem/stepit-macro) | The whole rig in one container: the modules, the behaviors and objectives, and StepIt UI. | [![Format](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-ros-lint.yml) [![CI](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci.yml) |

## The Modules

| Repository | Role | CI |
|---|---|---|
| [stepit-motors](https://github.com/kineticsystem/stepit-motors) | The robot: ROS 2 control of the stepper motors, and the firmware of the Teensy. | [![Format](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/stepit-motors/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-motors/actions/workflows/industrial_ci.yml) |
| [stepit-freezer](https://github.com/kineticsystem/stepit-freezer) | The Freezer board, which fires the cameras and the flashes, and its firmware. | [![Format](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-ros-lint.yml) [![Web](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-web.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-web.yml) [![CI/CD](https://github.com/kineticsystem/stepit-freezer/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/industrial_ci.yml) |
| [stepit-camera](https://github.com/kineticsystem/stepit-camera) | The ROS 2 driver of the camera. | [![Format](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/stepit-camera/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/industrial_ci.yml) [![Test page](https://github.com/kineticsystem/stepit-camera/actions/workflows/web.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/web.yml) |
| [stepit-commander](https://github.com/kineticsystem/stepit-commander) | The action server that runs the objectives, behavior trees. | [![Format](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/stepit-commander/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-commander/actions/workflows/industrial_ci.yml) |
| [stepit-editor](https://github.com/kineticsystem/stepit-editor) | The web editor of the objectives. | [![CI](https://github.com/kineticsystem/stepit-editor/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-editor/actions/workflows/ci.yml) |

## The Libraries

| Repository | Role | CI |
|---|---|---|
| [framed-serial](https://github.com/kineticsystem/framed-serial) | Framed, CRC-checked messages over a serial port, for StepIt Motors and StepIt Freezer. | [![Format](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/framed-serial/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/framed-serial/actions/workflows/industrial_ci.yml) |
| [serial](https://github.com/kineticsystem/serial) | The serial port library, our fork, branch `ros2`. | No CI |
| [BehaviorTree.ROS2](https://github.com/kineticsystem/BehaviorTree.ROS2) | BehaviorTree.CPP for ROS 2, our fork, branch `humble`, for the commander. | No CI: its workflows have never run |

## Around the Rig

| Repository | Role | CI |
|---|---|---|
| [stepit-grader](https://github.com/kineticsystem/stepit-grader) | A photo editor for the tones and colours of a picture. | [![CI](https://github.com/kineticsystem/stepit-grader/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-grader/actions/workflows/ci.yml) |
| [stepit-stacker](https://github.com/kineticsystem/stepit-stacker) | Focus stacking of the rig's sessions. | No CI |

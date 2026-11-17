## About Me

I'm a senior software engineer specialising in integration and tooling: connecting hardware, ROS 2, simulation and user interfaces into systems that work.

I have over 20 years of commercial experience, including B2B contracting, and more than a decade of C++ and Qt. I've been client-facing throughout, from on-site analysis to leading offshore development teams.

I'm the creator of [Lentigram](https://www.framedlives.com/?page=lentigram), an application that interlaces a sequence of pictures for lenticular printing, used by more than 200 professionals worldwide.

Following is a list of personal projects I'm actively working on.

## StepIt

### The Main Rig

StepIt is a modular robotic rig for 3D macro photography. Each module lives in a repository of its own. The modules are robot agnostic: each of them can be used in other robotic projects.

The main repo, `stepit-macro`, puts the modules together in one container with the user interface that drives them.

| Repository | Description |
|---|---|
| [stepit-macro](https://github.com/kineticsystem/stepit-macro) | The whole rig in one container: the modules, the behaviors and objectives, and StepIt UI.<br>[![Format](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci-ros-lint.yml) [![CI](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-macro/actions/workflows/ci.yml) |
| [stepit-motors](https://github.com/kineticsystem/stepit-motors) | The robot: ROS 2 control of the stepper motors, and the firmware of the Teensy.<br>[![Format](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-motors/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/stepit-motors/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-motors/actions/workflows/industrial_ci.yml) |
| [stepit-freezer](https://github.com/kineticsystem/stepit-freezer) | The Freezer board, which fires the cameras and the flashes, and its firmware.<br>[![Format](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-ros-lint.yml) [![Web](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-web.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/ci-web.yml) [![CI/CD](https://github.com/kineticsystem/stepit-freezer/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-freezer/actions/workflows/industrial_ci.yml) |
| [stepit-camera](https://github.com/kineticsystem/stepit-camera) | The ROS 2 driver of the camera.<br>[![Format](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/stepit-camera/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/industrial_ci.yml) [![Test page](https://github.com/kineticsystem/stepit-camera/actions/workflows/web.yml/badge.svg)](https://github.com/kineticsystem/stepit-camera/actions/workflows/web.yml) |
| [stepit-commander](https://github.com/kineticsystem/stepit-commander) | The action server that runs the objectives, behavior trees.<br>[![Format](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/stepit-commander/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/stepit-commander/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-commander/actions/workflows/industrial_ci.yml) |
| [stepit-editor](https://github.com/kineticsystem/stepit-editor) | The web editor of the objectives.<br>[![CI](https://github.com/kineticsystem/stepit-editor/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-editor/actions/workflows/ci.yml) |
| [framed-serial](https://github.com/kineticsystem/framed-serial) | Framed, CRC-checked messages over a serial port, for StepIt Motors and StepIt Freezer.<br>[![Format](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-format.yml) [![ROS Lint](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-ros-lint.yml/badge.svg)](https://github.com/kineticsystem/framed-serial/actions/workflows/ci-ros-lint.yml) [![CI/CD](https://github.com/kineticsystem/framed-serial/actions/workflows/industrial_ci.yml/badge.svg)](https://github.com/kineticsystem/framed-serial/actions/workflows/industrial_ci.yml) |

### Optional Tools

| Repository | Description |
|---|---|
| [stepit-stacker](https://github.com/kineticsystem/stepit-stacker) | Turns each StepIt Macro session into focus-stacked, graded 16-bit images, and renders them on a 3D display. |
| [stepit-grader](https://github.com/kineticsystem/stepit-grader) | A photo editor for the tones and colours of a picture.<br>[![CI](https://github.com/kineticsystem/stepit-grader/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-grader/actions/workflows/ci.yml) |
| [raw-converter](https://github.com/kineticsystem/raw-converter) | Converts the camera's raw files, e.g. Canon CR2, to DNG for Lightroom.<br>[![Format](https://github.com/kineticsystem/raw-converter/actions/workflows/ci-format.yml/badge.svg)](https://github.com/kineticsystem/raw-converter/actions/workflows/ci-format.yml) [![CI](https://github.com/kineticsystem/raw-converter/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/raw-converter/actions/workflows/ci.yml) |
| [holo-pi](https://github.com/kineticsystem/holo-pi) | Shows the rig's 3D pictures and videos as holograms on a Looking Glass Portrait, from a Raspberry Pi, with a web page to upload and play them.<br>[![CI](https://github.com/kineticsystem/holo-pi/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/holo-pi/actions/workflows/ci.yml) |

### Experimental

| Repository | Description |
|---|---|
| [stepit-speech](https://github.com/kineticsystem/stepit-speech) | Drives the rig by voice: spoken commands, read back and confirmed, sent through rosbridge.<br>[![CI](https://github.com/kineticsystem/stepit-speech/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/stepit-speech/actions/workflows/ci.yml) |

## Other

This is a list of other repositories in random order.

| Repository | Description |
|---|---|
| [qwen-4090-bench](https://github.com/kineticsystem/qwen-4090-bench) | A benchmark of four inference engines against llama.cpp, running Qwen3.8-27B on one RTX 4090.<br>[![CI](https://github.com/kineticsystem/qwen-4090-bench/actions/workflows/ci.yml/badge.svg)](https://github.com/kineticsystem/qwen-4090-bench/actions/workflows/ci.yml) |
| [vscode_ros2](https://github.com/kineticsystem/vscode_ros2) | A guide to building and running ROS 2 projects in C++ and Python with VS Code, over SSH and in Docker. |
| [react-three-fiber-marker](https://github.com/kineticsystem/react-three-fiber-marker) | A React Three Fiber component for an existing three.js component, [three-freeform-controls](https://github.com/tocttou/three-freeform-controls): a marker that moves and rotates an object in a 3D scene. |

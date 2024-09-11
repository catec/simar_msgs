# SIMAR Messages
This repository contains the definition of the ROS messages used in the SIMAR project.

## Installation
This package is tested under [ROS Noetic](https://wiki.ros.org/noetic/Installation/Ubuntu) and Ubuntu 20.04.
To install the messages in your workspace, clone the repository and build it using catkin_make.

## Messages description
The following table describes the messages defined in this package.

| Message name | Description |
| ------------ | ----------- |
| [simar_msgs/Alarm](msg/Alarm.msg) | Message used to send alarms to the system. |
| [simar_msgs/PayloadAction](msg/PayloadAction.msg) | Message used to send actions to the availble payloads. |
| [simar_msgs/ExtremeTemps](msg/ExtremeTemps.msg) | Message used to publish the extreme temperature data.|
| [simar_msgs/PixelTemp](msg/PixelTemp.msg) | Message used to show the temperature of a pixel. |


## Services description
The following table describes the services implemented in SIMAR packages.

### USE Packages

| Services name | Type | Description |
| ------------- | ----------- | ----------- |
| /simar/visual_payload/capture               | [std_srvs/Trigger](https://docs.ros.org/en/noetic/api/std_srvs/html/srv/Trigger.html)           | Triggers the capture of an image from the camera.                           |
| /simar/visual_payload/recording_start       | [std_srvs/Trigger](https://docs.ros.org/en/noetic/api/std_srvs/html/srv/Trigger.html)           | Starts recording video from the camera.                                     |
| /simar/visual_payload/recording_stop        | [std_srvs/Trigger](https://docs.ros.org/en/noetic/api/std_srvs/html/srv/Trigger.html)           | Stops recording video from the camera.                                      |
| /simar/visual_payload/zoom_in               | [std_srvs/Trigger](https://docs.ros.org/en/noetic/api/std_srvs/html/srv/Trigger.html)           | Zooms in the camera's field of view.                                        |
| /simar/visual_payload/zoom_out              | [std_srvs/Trigger](https://docs.ros.org/en/noetic/api/std_srvs/html/srv/Trigger.html)           | Zooms out the camera's field of view.                                       |
| /simar/visual_payload/set_eth_stream        | [simar_wirispro_driver/CameraEthStreamService](#)                                             | Sets the Ethernet stream status (TRUE/FALSE).                               |
| /ros_gremsy/goal                            | [ros_gremsy/GimbalPos.srv](https://github.com/alemuva2001/ros_gremsy/blob/master/gremsy_base/srv/GimbalPos.srv) | Controls the gimbal’s orientation.                             |
| /ros_gremsy/mode                            | [ros_gremsy/GimbalMode.srv](https://github.com/alemuva2001/ros_gremsy/blob/master/gremsy_base/srv/GimbalMode.srv)                   | Sets the gimbal’s operating mode .            |



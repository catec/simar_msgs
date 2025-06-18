project(simar_msgs)
cmake_minimum_required(VERSION 3.5.1)

##################################
## Configure CATKIN dependecies ##
##################################

find_package(catkin REQUIRED 
   COMPONENTS
      std_msgs
      geometry_msgs
      message_generation
      nav_msgs
)

find_package(catkin REQUIRED COMPONENTS
   std_msgs
   geometry_msgs
   message_generation
   sensor_msgs
   nav_msgs
)

################################################
## Declare ROS messages, services and actions ##
################################################

add_message_files(DIRECTORY msg
  FILES
  VP_logger.msg
  PipeDetectedStamped.msg
  PipeDetectedStampedArray.msg
  WayPoint.msg
  State.msg
  )


add_service_files(DIRECTORY srv
FILES
SetRadius.srv
SetLandingPoint.srv
CameraEthStreamService.srv
ExtremeTempsService.srv
GetFlightPlan.srv
GimbalMode.srv
GimbalPos.srv
GoToWaypoint.srv
SetFlightPlan.srv
SetLandingPoint.srv
SetPayload.srv
SetRadius.srv
Takeoff.srv
SetPayloadTf.srv
)

generate_messages(DEPENDENCIES std_msgs geometry_msgs nav_msgs)

###################################
## CATKIN specific configuration ##
###################################

catkin_package(
   CATKIN_DEPENDS message_runtime std_msgs geometry_msgs sensor_msgs nav_msgs
   DEPENDS
)

#############
## Install ##
#############

install(DIRECTORY msg
   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

# install(DIRECTORY srv
#    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

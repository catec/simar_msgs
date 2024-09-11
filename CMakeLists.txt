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
)

find_package(catkin REQUIRED COMPONENTS
   std_msgs
   geometry_msgs
   message_generation
)

################################################
## Declare ROS messages, services and actions ##
################################################

add_message_files(DIRECTORY msg)

add_service_files(DIRECTORY srv)

generate_messages(DEPENDENCIES std_msg geometry_msgs)

###################################
## CATKIN specific configuration ##
###################################

catkin_package(
   CATKIN_DEPENDS message_runtime
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
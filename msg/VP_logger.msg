# This msg will fill al the fields needed to make the csv file for a post flight processing


std_msgs/Header header

# The filename will have the following format:
# Image:
# - visible: hh-mm-ss-visible.jpg
# - thermal: hh-mm-ss-thermal.tiff
# Video:
# - visible: hh-mm-ss-visible.mp4 
# - thermal: hh-mm-ss-thermal.api
string camera_date
string visible_filename
string thermal_filename
# in each capture or recording we will have both visual and thermal data
## media_types:
# images: 0
# videos: 1
bool media_type

# For each mission we will have a counter that will be the group
# for each capture 
int8 group

# each capture will have a thermal image and a rgb image

# zoom info
float32 visible_zoom_info
float32 thermal_zoom_info
# resolution fixed: 
# -visible: 1920x1080
# -thermal: 640x512
string visible_resolution  # e.g., "1920x1080"
string thermal_resolution  # e.g., "640x512"

# focal length in mm
float32 visible_focal_length
float32 thermal_focal_length

# Position and orientation from tf
geometry_msgs/Point position
geometry_msgs/Quaternion orientation

# Additional metadata (optional)
#map<string, string> additional_metadata

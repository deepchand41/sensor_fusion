# robotModels
Includes different models required for simulation in Gazebo using ROS framework.

### Software Requirements
* ROS 1 (Tested in noetic version of ROS)
http://wiki.ros.org/noetic/Installation/Ubuntu
* Gazebo simulator (Tested on version 11.3.0)
http://gazebosim.org/  or ($ sudo apt install ros-noetic-gazebo-ros)
* Plugin of realsense device
https://github.com/pal-robotics/realsense_gazebo_plugin (Already included with the base model but not with humanoid, one can download it from the link too)


### Content
**base:** It consist of the base of the robot. It includes wheels, lidar sensor, realsense d415 sensor, and a base frame.

**humanoid:** It adds humanoid body to the base model. It has similar sensors but structure, location of sensors, and simulation physics are different.

	
### Notes
* **publish_pointcloud** is set to false as default since it requires high computation power (can be set true from file *.gazebo.xacro)
* robot uses a differential drive plugin (already included in ros installation)
* Each model uses a lidar plugin (already included with ros installation)

### Test Platform:
* Ubuntu 20.04 (focal)
* AMD Ryzen 5 3600X 6-Core Processor
* GeForce GT 710 (2GB dedicated graphics)

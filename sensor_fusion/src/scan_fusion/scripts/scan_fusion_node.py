#! /usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

scan_realsense = None
publisher_scan_fusion = None

RANGE_OFFSET = 0.03 # in Meter

def callback_scan_realsense(data):
    """
    Callback of the realsense subscriber. Save the laserscan to fuse it with the lidar laserscan/
    :param data : LaserScan.
    :return:
    """
    global scan_realsense
    scan_realsense = data

def callback_scan_lidar(scan_lidar):
    """
    Callback of the lidar subscriber. Fused the laserscan from the realsense with the lidar laserscan. Insert into the 
    lidar laserscan the realsense laserscan when the range is smaller. Published the fused laserscan.
    :param scan_lidar: lidar laserscan
    :return:
    """
    if scan_realsense is not None:
        scan_lidar_ranges = list(scan_lidar.ranges)
        index_lidar_start = int(len(scan_lidar.ranges) - len(scan_realsense.ranges)) / 2

        for index_realsense in range(len(scan_realsense.ranges)):
            index_lidar = index_lidar_start + index_realsense
            range_lidar = scan_lidar.ranges[index_lidar]
            range_realsense = scan_realsense.ranges[index_realsense] - RANGE_OFFSET
            print(scan_realsense.range_max)
            # If the laserscan range from the realsense smaller the lidar then take the lidar laserscan range.
            # range_realsense < scan_realsense.range_max and 
            if range_realsense < range_lidar:
                scan_lidar_ranges[index_lidar] = range_realsense

        scan_lidar.ranges = scan_lidar_ranges
    
    publisher_scan_fusion.publish(scan_lidar)


def start():
    """
    Start the scan fusion node to fused the lidar and realsense laserscan.
    :return:
    """
    
    rospy.init_node('scan_fusion')

    global publisher_scan_fusion
    publisher_scan_fusion = rospy.Publisher('fused_scan', LaserScan, queue_size=1)
    rospy.Subscriber("scan", LaserScan, callback_scan_lidar)
    rospy.Subscriber("camera/scan", LaserScan, callback_scan_realsense)
    
    rospy.spin()

if __name__ == '__main__':
    start()
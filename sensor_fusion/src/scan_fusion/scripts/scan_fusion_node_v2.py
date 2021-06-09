#! /usr/bin/env python3
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
    global publisher_scan_fusion, scan_realsense
    
    if scan_realsense is not None:
        lidar_length = len(scan_lidar.ranges)
        realsense_length = len(scan_realsense.ranges)
        
        scan_lidar_ranges = list(scan_lidar.ranges)
        index_lidar_start = ((lidar_length - realsense_length) // 2) - (lidar_length // 2)

        for index_realsense in range(realsense_length):
            index_lidar = index_lidar_start + index_realsense
            range_lidar = scan_lidar.ranges[index_lidar]
            range_realsense = scan_realsense.ranges[index_realsense] - RANGE_OFFSET
            if range_realsense < range_lidar:
                rospy.logwarn(f"{range_lidar}, {range_realsense}")
                scan_lidar_ranges[index_lidar] = range_realsense

        scan_lidar.ranges = scan_lidar_ranges
    
    publisher_scan_fusion.publish(scan_lidar)


def start():
    """
    Start the scan fusion node to fused the lidar and realsense laserscan.
    :return:
    """
    
    rospy.init_node('scan_fusion')
    pointcloud_scan_topic = rospy.get_param("pointcloud_scan_topic")
    lidar_scan_topic = rospy.get_param("lidar_scan_topic")

    global publisher_scan_fusion
    publisher_scan_fusion = rospy.Publisher('fused_scan', LaserScan, queue_size=5)
    rospy.Subscriber(lidar_scan_topic, LaserScan, callback_scan_lidar)
    rospy.Subscriber(pointcloud_scan_topic, LaserScan, callback_scan_realsense)
    
    rospy.spin()

if __name__ == '__main__':
    start()

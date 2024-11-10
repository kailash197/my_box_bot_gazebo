# 7.8   Spawning Multiple XACRO Robot Models into Gazebo
cd ~/ros2_ws/src/my_box_bot_gazebo/launch
touch box_bot_spawn_two_robots.launch.py

cd ~/ros2_ws && colcon build  --packages-select my_box_bot_gazebo
source install/setup.bash && ros2 launch my_box_bot_gazebo box_bot_spawn_two_robots.launch.py

ros2 topic list
ros2 run rqt_tf_tree rqt_tf_tree

ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args --remap cmd_vel:=/robot1/cmd_vel

ros2 run teleop_twist_keyboard teleop_twist_keyboard --ros-args --remap cmd_vel:=/robot2/cmd_vel

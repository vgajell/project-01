#!/bin/bash

# Function to spawn a turtle at a given position
spawn_turtle() {
    ros2 service call /spawn turtlesim/srv/Spawn "{x: $1, y: $2, theta: 0.0, name: '$3'}"
}

# Function to move the turtle using twist messages
move_turtle() {
    ros2 topic pub --once $1 geometry_msgs/msg/Twist "{linear: {x: $2, y: $3, z: 0.0}, angular: {x: 0.0, y: 0.0, z: $4}}"
}

# Create turtles with different names
spawn_turtle 2 2 turtle1
spawn_turtle 2 6 turtle2

# Move turtle1 to draw the letter 'V'
move_turtle /turtle2/cmd_vel 2 0 0
sleep 1
move_turtle /turtle2/cmd_vel 2 -2 0
sleep 1
move_turtle /turtle2/cmd_vel -2 0 0
sleep 1

# Move turtle2 to draw the letter 'K'
move_turtle /turtle2/cmd_vel 2 0 0
sleep 1
move_turtle /turtle2/cmd_vel 0 0 0
sleep 1
move_turtle /turtle2/cmd_vel 1 0 0
sleep 1
move_turtle /turtle2/cmd_vel 2 0 2
sleep 1
move_turtle /turtle2/cmd_vel 0 0 0
sleep 1
move_turtle /turtle2/cmd_vel 0 0 1
sleep 1
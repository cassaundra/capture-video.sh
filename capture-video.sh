#!/bin/bash

# Kill existing gphoto processes so we can control the device
echo "Killing gphoto2 processes"
pkill -f gphoto2

# Load v4l2loopback
echo "Loading v4l2loopback"
modprobe v4l2loopback

# Capture, process, output
echo "Capturing..."
gphoto2 --stdout --capture-movie | gst-launch-1.0 fdsrc fd=0 ! decodebin name=dec ! queue ! videoconvert ! tee ! v4l2sink device=/dev/video2

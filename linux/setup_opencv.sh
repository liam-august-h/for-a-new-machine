#!/bin/bash

# compile enviroment
sudo apt-get install build-essential cmake pkg-config

# pictures
sudo apt-get install libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev

# videos
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

# GUI
sudo apt-get install libgtk2.0-dev

# optimization
sudo apt-get install libatlas-base-dev gfortran

ln -s /usr/include/libv4l1-videodev.h /usr/include/linux/videodev.h

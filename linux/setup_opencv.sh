#!/bin/bash

# compile enviroment
sudo apt-get install -y build-essential cmake pkg-config

# pictures
sudo apt-get install -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev

# videos
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev

# GUI
sudo apt-get install -y libgtk-3-dev

# optimization
sudo apt-get install -y libatlas-base-dev gfortran

sudo apt-get install -y python2.7-dev

sudo apt-get install -y python-numpy

#sudo ln -s /usr/include/libv4l1-videodev.h /usr/include/linux/videodev.h

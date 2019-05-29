#!/bin/sh
## script for setup darknet

# for compiles
af install -y build-essential libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev gcc g++ make wgwt cmake git

# Desktop directory
cd ~/Desktop

# clone from github
git clone https://github.com/alexeyAB/darknet.git

# change directory
cd darknet

# compile
make

# download
wget https://pjreddie.com/media/files/yolov3.weights

# run test
# ./darknet detector test ./cfg/coco.data ./cfg/yolov3.cfg ./yolov3.weights
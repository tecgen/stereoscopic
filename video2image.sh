#!/bin/bash

# constants
FPS=24
FORMAT=jpg

# get file name without extension
FILENAME=$1
NAME=`echo $FILENAME | cut -d'.' -f 1`

# documentation: http://linuxers.org/tutorial/how-extract-images-video-using-ffmpeg
mkdir $NAME
ffmpeg -i $FILENAME -r $FPS -f image2 $NAME/$NAME'-frame-%5d.'$FORMAT


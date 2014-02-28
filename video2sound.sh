#!/bin/bash
#http://linuxers.org/tutorial/basic-video-transcoding-options-ffmpeg

# get file name without extension
FILENAME=$1
NAME=`echo $FILENAME | cut -d'.' -f 1`

ffmpeg -i $FILENAME -vn $NAME'.wav'

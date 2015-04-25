#!/bin/sh
# Parameters

FILE_PATH = "subwoofer"
ASS_PATH = "subwoofer.ass"

:'
SCALE = "-1:540"
BITRATE = "1200k"
'

BITRATE = "1600k"
#SCALE = " "


#
# The run
ffmpeg -i $FILE\.mp4 -vf \"ass=$ASS_PATH,scale=$SCALE\" -c:v libx264 -b:v $BITRATE -preset slow -threads 0 $FILE\-$BITRATE.mp4
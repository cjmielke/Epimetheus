#!/bin/bash

ffmpeg -y -r 2 -i frames/frame%04d.png -c:v libx264 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -r 30 -q 1 -pix_fmt yuv420p video.mp4

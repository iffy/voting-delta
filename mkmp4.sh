#!/bin/bash

ffmpeg -framerate 5 -pattern_type glob -i '/tmp/election_montage/*.png' -c:v libx264 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -pix_fmt yuv420p /tmp/election.mp4
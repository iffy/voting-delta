#!/bin/bash

now=$(date +"%Y%m%d-%H%M")

node_modules/.bin/phantomjs shot.js http://www.nytimes.com/elections/results/president nytimes-${now}.png 1920px 2>/dev/null &

wait

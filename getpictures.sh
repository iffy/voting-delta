#!/bin/bash

now=$(date +"%Y%m%d-%H%M")

SHOT="node_modules/.bin/phantomjs shot.js"

# nytimes
$SHOT http://www.nytimes.com/elections/results/president images/nytimes-pres-${now}.png 1920px >>/dev/null &
$SHOT http://www.nytimes.com/elections/results/senate images/nytimes-senate-${now}.png 1920px >>/dev/null &
$SHOT http://www.nytimes.com/elections/results/house images/nytimes-house-${now}.png 1920px >>/dev/null &

# cnn
$SHOT http://www.cnn.com/election/results images/cnn-${now}.png 800px >> /dev/null &

# cbs
$SHOT http://www.cbsnews.com/elections/2016/election-center/ images/cbs-${now}.png >> /dev/null &

# 538
#$SHOT http://projects.fivethirtyeight.com/2016-election-forecast/ images/five38-${now}.png >> /dev/null &

# politico
$SHOT http://www.politico.com/2016-election/results/map/president images/politico-${now}.png '800px*1600px' >> /dev/null &

# fox
$SHOT http://www.foxnews.com/politics/elections/2016/presidential-election-headquarters images/fox-${now}.png '800px*1600px' >> /dev/null &

# bbc
$SHOT http://www.bbc.com/news/election/us2016/results images/bbc-${now}.png '800px' >> /dev/null &

# npr
$SHOT http://www.npr.org/2016/11/08/500927768/2016-presidential-election-results-for-each-state images/npr-${now}.png "1200px" >> /dev/null &

wait

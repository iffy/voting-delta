#!/bin/bash

mkdir -p /tmp/election


set -x
# bbc
mogrify -path /tmp/election/ -crop 800x1045+0+312 +repage images/bbc-*

# cbs
mogrify -path /tmp/election -crop 1000x1300+0+0 +repage images/cbs-*

# cnn
# pres
mogrify -path /tmp/election -crop 487x750+0+329 +repage -format pres.png images/cnn-*

# fox
mogrify -path /tmp/election -crop 800x979+0+177 +repage images/fox-*

# npr
# no adjustment
cp images/npr-* /tmp/election/

# nytimes-house
mogrify -path /tmp/election -crop 1263x1125+1244+154 +repage images/nytimes-house-*

# nytimes-pres
mogrify -path /tmp/election -crop 1246x821+1239+322 +repage images/nytimes-pres-*

# nytimes-senate
mogrify -path /tmp/election -crop 1238x902+1247+201 +repage images/nytimes-senate-*

# politico
mogrify -path /tmp/election -crop 800x851+0+425 +repage images/politico-*


echo "Making gifs..."
things="npr nytimes-pres nytimes-senate nytimes-house cnn cbs politico fox bbc"
for prefix in $things; do
    echo $prefix
    convert -delay 10 -loop 0 /tmp/election/${prefix}* gifs/${prefix}.gif
done
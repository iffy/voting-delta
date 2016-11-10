#!/bin/bash

mkdir -p /tmp/election

echo "Making gifs..."
things="npr nytimes-pres nytimes-senate nytimes-house cnn cbs politico fox bbc"
for prefix in $things; do
    echo $prefix
    convert -delay 10 -loop 0 /tmp/election/${prefix}* gifs/${prefix}.gif
done
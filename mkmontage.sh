#!/bin/bash

mkdir -p /tmp/election_montage

for ts in $(ls /tmp/election/ | cut -d '-' -f2-3 | sort -u); do
    echo $ts
    montage -background '#000000' -geometry +4+4 /tmp/election/*${ts} /tmp/election_montage/${ts}
done

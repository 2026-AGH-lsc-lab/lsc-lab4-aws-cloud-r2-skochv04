#!/bin/bash

cd results || exit

for f in scenario-a-zip scenario-a-container \
         cloudwatch-zip-reports cloudwatch-container-reports \
         scenario-b-* scenario-c-*; do
    if [ -f "$f" ] && [[ "$f" != *.txt ]]; then
        mv "$f" "$f.txt"
        echo "Renamed: $f -> $f.txt"
    fi
done

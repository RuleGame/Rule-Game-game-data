#!/bin/csh

echo "image,color,angle" > properties.csv

foreach x (red orange green blue)
    ../../../../game/scripts/make-svg-arrows.sh $x >> properties.csv
end

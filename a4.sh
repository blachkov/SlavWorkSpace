#!/bin/bash

mkdir ./Lightened
convert ./Pictures/*.PNG -fill white -colorize 60% ./Lightened/light.png
montage ./Lightened/*.png -tile 3x3 ./cut.pdf
rm -r ./Lightened
echo DONE!

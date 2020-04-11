#!/bin/sh

#./genmin.sh
git gc
rsync -av --delete . kenti:web/meet.nofech.cz/

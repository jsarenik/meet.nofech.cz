#!/bin/sh

./make-mee.sh
rsync -av --delete . kenti:web/mee/
git reset --hard

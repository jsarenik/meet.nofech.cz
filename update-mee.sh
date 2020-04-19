#!/bin/sh

rsync -av --delete --exclude public/index.html . kenti:web/mee/


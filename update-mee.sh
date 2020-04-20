#!/bin/sh

sed -i '/defaultLanguage:/s|cs|en|' public/config.js
./statify.sh
rsync -av --delete . kenti:web/mee/
git reset --hard

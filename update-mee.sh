#!/bin/sh

./statify.sh
sed -i '/defaultLanguage:/s|cs|en|' public/config.js
rsync -av --delete . kenti:web/mee/
git reset --hard

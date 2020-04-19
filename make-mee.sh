#!/bin/sh

sed -i '/defaultLanguage:/s|cs|en|' public/config.js
./statify.sh
cat public/static/index.html > public/index.html

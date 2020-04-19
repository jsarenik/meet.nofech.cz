#!/bin/sh

sed -i '/defaultLanguage:/s|cs|en|' public/config.js
./statify.sh

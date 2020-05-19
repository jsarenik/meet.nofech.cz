#!/bin/sh

grep -q watermark.png public/css/all.css && \
  sed -i 's|images/watermark.png|images/watermark.webp|' public/css/all.css
grep -q googleplay.png static/welcomePageAdditionalContent.html && \
  sed -i 's|googleplay.png|googleplay.webp|' static/welcomePageAdditionalContent.html

#find public -name '*.png'

cd public/images/welcome_page
cwebp googleplay.png -o googleplay.webp
cd ..
cwebp watermark.png -o watermark.webp

#!/bin/sh

cp -v main-cs.json languages-cs.json public/lang/
cp -v deep-linking-image.png public/images/

MYHASH=$(git rev-parse --short HEAD)
PROCESS=${*:-"static/*.html"}
for i in $PROCESS
do
#<style type=\"text/css\">\n#include \"public/\1\"\n</style>|" \
#  -e "/\s*<script><!--#include/\
#s|^\s*<script><!--#include virtual=\"\([^\"]\+\).*|\
#<script>\n#include \"public/\1\"\n</script>|" \
#  -e "/<link rel=\"stylesheet\"/\
#s|^\s*<link rel=\"stylesheet\" href=\"\([^\"]\+\)\".*$|\
sed \
  -e "/\s*<!--#include/\
s|^\s*<!--#include virtual=\"\([^\"]\+\).*|#include \"public/\1\"|" \
  -e "/\s*<script><!--#include/\
s|^\s*<script><!--#include virtual=\"\([^\"]\+\).*|\
<script src=\"/\1\?v=$MYHASH\"></script>|" \
  $i \
  | cpp \
  | sed -e '/^#/d;/^$/d;s/^\s\+//' \
  -e "/<script src=\"[a-z]/\
s|^\s*<script src=\"\([a-z]\)|<script src=\"/\1|" \
  -e "/<script src=\"\/\//\
s|^\s*<script src=\"\/\/|<script src=\"/|" \
  > public/$i
done

# Now for config files
PROCESS=${*:-"config/*.js"}
for i in $PROCESS
do
  sed -e '/^#/d;/^$/d;s/^\s\+//;/^\/\//d;/^\/\*.*\*\/$/d' $i \
  > public/${i##config/}
done

cat public/static/index.html > public/index.html

#./makelast.sh
./pngtowebp.sh

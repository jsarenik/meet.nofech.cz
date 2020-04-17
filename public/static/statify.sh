#!/bin/sh

for i in *.html
do
sed \
  -e "/\s*<!--#include/\
s|^\s*<!--#include virtual=\"/\([^\"]\+\).*|#include \"../orig/\1\"|" \
  -e "/<link rel=\"stylesheet\"/\
s|^\s*<link rel=\"stylesheet\" href=\"\([^\"]\+\)\".*$|\
<style type=\"text/css\">\n\
#include \"../\1\"\n</style>|" $i | cpp | sed '/^#/d' > $i-new.html
cat $i-new.html > $i
rm $i-new.html
done

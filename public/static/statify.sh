#!/bin/sh

for i in $*
do
sed \
  -e "/\s*<!--#include/\
s|^\s*<!--#include virtual=\"\([^\"]\+\).*|#include \"../\1\"|" \
  -e "/\s*<script><!--#include/\
s|^\s*<script><!--#include virtual=\"\([^\"]\+\).*|\
<script>\n#include \"../\1\"\n</script>|" \
  -e "/<link rel=\"stylesheet\"/\
s|^\s*<link rel=\"stylesheet\" href=\"\([^\"]\+\)\".*$|\
<style type=\"text/css\">\n#include \"../\1\"\n</style>|" \
  $i \
  | cpp | sed '/^#/d;/^$/d;s/^\s\+//' > $i-new.html
cat $i-new.html > $i
rm $i-new.html
done

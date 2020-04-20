#!/bin/sh

PROCESS=${*:-"static/*.html"}
for i in $PROCESS
do
sed \
  -e "/\s*<!--#include/\
s|^\s*<!--#include virtual=\"\([^\"]\+\).*|#include \"public/\1\"|" \
  -e "/\s*<script><!--#include/\
s|^\s*<script><!--#include virtual=\"\([^\"]\+\).*|\
<script>\n#include \"public/\1\"\n</script>|" \
  -e "/<link rel=\"stylesheet\"/\
s|^\s*<link rel=\"stylesheet\" href=\"\([^\"]\+\)\".*$|\
<style type=\"text/css\">\n#include \"public/\1\"\n</style>|" \
  $i \
  | cpp | sed '/^#/d;/^$/d;s/^\s\+//' > public/$i
done
cat public/static/index.html > public/index.html

#!/bin/sh

JITSRC=$HOME/src/jitsi-meet

for i in libs css images lang sounds static connection_optimization
do
  rsync -av $JITSRC/$i/ public/$i/
done

cp -v \
  $JITSRC/plugin.head.html \
  $JITSRC/head.html \
  $JITSRC/base.html \
  $JITSRC/title.html \
  $JITSRC/body.html \
  public/
cp -v  $JITSRC/index.html public/static/
cp -v main-cs.json languages-cs.json public/lang/
cd public/static
./statify.sh *.html
cd -
cat public/static/index.html > public/index.html

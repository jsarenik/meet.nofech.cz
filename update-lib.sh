#!/bin/sh

JITSRC=$HOME/src/jitsi-meet

for i in libs css images lang sounds static
do
  rsync -av --delete $JITSRC/$i/ public/$i/
done

test -d public/orig || mkdir public/orig
cp -v \
  $JITSRC/index.html \
  $JITSRC/config.js \
  $JITSRC/interface_config.js \
  $JITSRC/logging_config.js \
  $JITSRC/plugin.head.html \
  $JITSRC/head.html \
  $JITSRC/base.html \
  $JITSRC/title.html \
  $JITSRC/body.html \
  public/orig/
cp -v main-cs.json languages-cs.json public/lang/

#!/bin/sh

JITSRC=$HOME/src/jitsi-meet

for i in images libs css sounds connection_optimization
do
  rsync -av --delete $JITSRC/$i/ public/$i/
done
rsync -av $JITSRC/lang/ public/lang/
rsync -av $JITSRC/static/ $JITSRC/index.html static/

cp -v \
  $JITSRC/plugin.head.html \
  $JITSRC/head.html \
  $JITSRC/base.html \
  $JITSRC/title.html \
  $JITSRC/body.html \
  public/
cp -v main-cs.json languages-cs.json public/lang/
cp -v deep-linking-image.png public/images/

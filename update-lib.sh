#!/bin/sh

for i in \
  app.bundle.min.js \
  app.bundle.min.map \
  do_external_connect.min.js \
  do_external_connect.min.map \
  lib-jitsi-meet.min.js \
  lib-jitsi-meet.min.map
do
  cp -v ~/src/jitsi-meet/libs/$i public/lib/
done

for i in css images lang sounds static
do
  rsync -av --delete ~/src/jitsi-meet/$i/ public/$i/
done

cp -v main-cs.json languages-cs.json public/lang/

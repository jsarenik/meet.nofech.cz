#!/bin/sh

JITSRC=$HOME/src/jitsi-meet

cp -v \
  $JITSRC/config.js \
  $JITSRC/interface_config.js \
  $JITSRC/logging_config.js \
  public/

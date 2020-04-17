#!/bin/sh

./read-config.sh \
  | diff -u - caddy-config.json \
  | less

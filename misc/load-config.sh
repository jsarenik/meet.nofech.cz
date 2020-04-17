#!/bin/sh

curl localhost:2019/load \
  -X POST -H "Content-Type: application/json" \
  -d @${1:-"caddy-config.json"}

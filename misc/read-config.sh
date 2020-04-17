#!/bin/sh

curl localhost:2019/config/ \
  | jq .

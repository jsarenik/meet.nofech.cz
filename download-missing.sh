#!/bin/sh
#
# usage: while true; do ./download-missing.sh ; done

URL=https://meet.jit.si

myget() {
  OUT="public/$1"
  echo "$OUT" | grep -q '/$' && OUT=${OUT}index.html
  mkdir -p ${OUT%/*}
  wget -c -O "$OUT" "$URL/$1"
#  ./fixbaseurl.sh
}

timeout 10 ./run-site.sh 2>&1 | grep -B1 "response:404" | grep url: \
  | cut -d/ -f2- \
  | while read a; do myget $a; done

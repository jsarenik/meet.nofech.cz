#!/bin/sh

n=1
while read line
do
  A=$(sed -n "${n}{s/\(: [\"{]\).*$/\1/p;/\}/p}" public/lang/main.json)
  #echo "$A"
  echo $A | grep -q ':' && grep -m1 "^$A" main-cs.json || echo "$A"
  n=$((n+1))
done < public/lang/main.json

#!/bin/sh

F=public/index.html

SONE='^<script src="\/libs\/do_external_connect.min.js'
STWO='^<script src="\/libs\/lib-jitsi-meet.min.js'
STHREE='^<script src="\/libs\/app.bundle.min.js'

{
grep -e "$SONE" \
     -e "$STWO" \
     -e "$STHREE" \
     $F
echo '</body></html>'
} > /tmp/last-$$.html

LINES=$(wc -l $F | cut -d" " -f1)
sed -i "$((LINES-1)),${LINES}d;/$SONE/d;/$STWO/d;/$STHREE/d;" $F
cat /tmp/last-$$.html >> $F
rm /tmp/last-$$.html

sed -i "/$SONE/s/\">/\" defer>/" $F
sed -i "/$STWO/s/\">/\" defer>/" $F
sed -i "/$STHREE/s/\">/\" defer>/" $F

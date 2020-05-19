#!/bin/sh

JITSRC=$HOME/src/jitsi-meet
JMCOPY=$HOME/web/meet.jit.si/public
a="/$0"; a=${a%/*}; a=${a:-.}; a=${a#/}/; BINDIR=$(cd $a; pwd)

mycp() {
  for i in "$@"
  do
    d="/$i"; d=${d%/*}; d=${d:-.}; d=${d#/}
    IFDIR=public/$d
    test "$IFDIR" = "" -a -d $IFDIR || mkdir -p $BINDIR/$IFDIR
    cp -v "$i" "$BINDIR/public/$d/"
  done
}

for i in libs css fonts sounds connection_optimization
do
  rsync -av --delete $JITSRC/$i/ public/$i/
done
rsync -av $JITSRC/lang/ public/lang/
rsync -av $JITSRC/images/ public/images/
rsync -av $JITSRC/static/ $JITSRC/index.html static/

cd $JMCOPY
cp -v static/welcomePageAdditionalContent.html $BINDIR/static/
mycp css/all.css images/add_to_slack.png images/welcome_page/appstore.svg images/welcome_page/facebook.svg images/welcome_page/github.svg images/welcome_page/googleplay.png images/welcome_page/linkedin.svg images/welcome_page/twitter.svg

cd $JITSRC
mycp plugin.head.html head.html base.html title.html

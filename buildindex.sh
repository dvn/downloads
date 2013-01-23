#!/bin/bash
OUT="index.html"
rm $OUT
ack -a -f | grep -v ^Makefile$ | grep -v ^buildindex.sh$ | \
while read i
  do echo "<a href=\"$i\">$i</a><br>" >> $OUT
done

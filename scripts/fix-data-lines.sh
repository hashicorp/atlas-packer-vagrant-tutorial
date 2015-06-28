#!/bin/bash
#
# This script converts crfl to lf if needed (on data folder)

for f in /tmp/data/**/*
do
	if [ -d "$f" ]; then
		continue;
	fi
	echo "Converting $f..."
	tr -d '\015' <$f >$f
done
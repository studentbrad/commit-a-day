#!/bin/bash
LOWER=1
UPPER=3
DIFF=$(($UPPER - $LOWER + 1))
COMMITS=$(($RANDOM % $DIFF + $LOWER))
git fetch
git pull
for i in {0..$COMMITS}
do
	now=$(date)
	echo $now > date.txt
	git add .
	git commit -m "$now"
	git push
	sleep 10
done

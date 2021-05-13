#!/bin/bash
commits=1
git fetch
git pull
for i in {0..$commits}
do
	now=$(date)
	echo $now > date.txt
	git add .
	git commit -m "$now"
	git push
	sleep 1
done

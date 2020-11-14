#!/bin/bash
commits_max=3
commits=(1 + $RANDOM % $commits_max)
git fetch
git pull
for i in {0..$commits}
do
	now=$(date)
	"$now" >> date.txt
    git add .
    git commit -m "$now"
    git push -u origin master
    sleep 1
done

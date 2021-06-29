# Commit-a-Day
Generate a random number of commits per day to this repository and get awesome GitHub streaks using crontab.

## Crontab
To set up crontab for a specific user run:
```
crontab -u username -e
```
To run once each day at noon, append to the bottom:
```
12 0 * * * cd <commit-a-day directory> && ./run.sh >> run.log 2>&1
```

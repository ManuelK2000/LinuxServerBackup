# Cron

Cron is a service, that can be useed to schedule and automate tasks.
You can define items in the cron table that will run a script or program on a given time.
One example is that a backup script will be scheduled every day at 3:00 AM.

To edit or add a new item to the crontab, enter `crontab -e` in your terminal.
You have to consider that each user has their own crontab, which will be executed with his corresponding permissions.

## Structure

Every line contains the time and the command, which will be executed on the given time.
To automate backups, you have to insert a new line with the following structure.

```
* * * * * command
- - - - -
| | | | |
| | | | +- Weekday	(0-7; Sunday is 0 and 7)
| | | +--- Month	(1-12)
| | +----- Day		(1-31)
| +------- Hour		(0-23)
+--------- Minute	(0-59)
```

## Examples

Here are a few examples, that you can adapt.

- Create a backup every day at midnight:  
`0 0 * * * /path/to/backupscript.sh`

- Create a backup every day at 3:00 AM:  
`0 3 * * * /path/to/backupscript.sh`

- Create a backup every Friday at 10:00 PM:  
`0 22 * * 5 /path/to/backupscript.sh`

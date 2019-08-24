# LinuxServerBackup
A script for creating local and network backups on a Linux server

## Features
- Easy to install
- Easy to use
- Create backups
- Restore backups
- Rotate backups
- Delete backups
- Statistics
- Compression
- Encryption
- E-mail notifications

## Technology
I am writing this script for my Debian Linux servers.

The goal is to install the script on one centralized server.
This backup-server fetches the data from a list of clients and stores a copy of these data as a backup.
I want to use rsync for the transmission. I think that FTP is also great, but it's only useful, if the client connects to a backup-server and upload it's files. But FTP has no encryption, what means that this solution is only acceptable in a private network.

Additional the script should be able to run in Local-mode, without copying data over the network.
In this mode, it simply copies files from one directory or disk to another target, like a seperate local harddrive.

The script will be called via cronjob automatically.

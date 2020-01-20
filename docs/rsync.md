# RSYNC command

Rsync is a command which can be used to transfer files on a local machine or even between multiple machines.


## Parameters
| Parameter (short) | Parameter (long)  | Description                                                                                            |
| ----------------- | ----------------- | ------------------------------------------------------------------------------------------------------ |
| -a			    | --archive         | Archiving function, a combination of -rlptgoD.                                                         |
| -v			    | --verbose         | Comprehensive output with more details.                                                                |
| -r			    | --recursive       | Copyping all subdirectories and files recursively.                                                     |
| -u			    | --update          | New files on the receiver side will not be overwritten.                                                |
| -l			    | --links           | Symbolic links will be copied.                                                                         |
| -A			    | --acls            | ACLs will be taken over.                                                                               |
| -X			    | --xatrs           | Extended attributes will be taken over.                                                                |
| -p			    | --perms           | Access permissions will be taken over.                                                                 |
| -o			    | --owner           | Owners will be taken over.                                                                             |
| -g			    | --group           | Group membership will be taken over.                                                                   |
| -D			    | --devices         | Device files will be taken over.                                                                       |
| -t			    | --times           | The property mtime will be taken over.                                                                 |
| -x			    | --one-file-system | The clone is restricted to the local file system.                                                      |
|   			    | --delete          | Deleted files in source will also be removed in target.                                                |
|   			    | --delete-excluded | Deletes excluded files on target.                                                                      |
|   			    | --partial         | Partly transmitted files remain after a connection loss. The following sync can be started seamlessly. |
|   			    | --numeric-ids     | Disables mapping of user and group names for the ownership of the transmitted files.                   |
|   			    | --compress        | Compression of the transmission.                                                                       |
|   			    | --exclude         | Excludes files from transmission.                                                                      |
|   			    | --exclude-from    | Excludes files from transmission. The patterns are loaded from a separate file.                        |
|   			    | --include         | Includes files to transmission.                                                                        |
|   			    | --include-from    | Includes files to transmission. The patterns are loaded from a separate file.                          |
|   			    | --bwlimit         | Limits the bandwidth to given Kbps (Kilobytes per second)                                              |

## Examples (local)


## Examples (network)

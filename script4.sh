#!/bin/bash

tar cvf $1.tar $2

curl  -k -u $4:$5 -T /home/user/$1.tar sftp://$3/sftpuser/

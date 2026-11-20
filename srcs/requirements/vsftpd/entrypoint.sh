#!/bin/bash

useradd -m -u 1010 -G www-data -s /bin/bash $FTP_USR

echo "$FTP_USR:$FTP_PASSWD" | chpasswd

vsftpd

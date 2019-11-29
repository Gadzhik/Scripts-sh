#!/bin/bash

yum install httpd -y
systemctl start httpd
httpd_state=`systemctl status httpd | awk 'NR==3 { print $3 }'`
echo "Текущий статус Веб сервера: ${httpd_status}"

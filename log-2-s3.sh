#!/bin/bash

path="/etc/httpd/logs/access_log"
s3_path="s3://test-log-to-s3-1999/log/"

DATE=$(date +"%Y-%m-%d")

log_file="application_logs_$DATE.tar.gz"
tar -zcvf "$log_file" "$path"
#tar -zcvf archive.tar.gz /path/to/directory



aws s3 cp $log_file $s3_path

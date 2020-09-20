#!/bin/bash
sudo -u hdfs hdfs fsck / | grep 'Under replicated' | awk -F':' '{print $1}' >> /tmp/under_replicated_files

cat /tmp/under_replicated_files |xargs -n 500 sudo -u hdfs hdfs dfs -setrep 1 /tmp/under_replicated_files

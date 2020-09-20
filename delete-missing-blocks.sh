#!/bin/bash
sudo -u hdfs hdfs dfsadmin -report
sudo -u hdfs hdfs fsck -list-corruptfileblocks
sudo -u hdfs hdfs fsck / -delete

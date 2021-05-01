#!/bin/bash


#Week 04, Day 2, Activity File: Introduction to Scripting

TAR_NAME="home."$(date +%m%e%Y)".tar"
#echo $TAR_NAME
tar cf /var/backup/home.tar /home
mv /var/backup/home.tar /var/backup/$TAR_NAME
ls -lash /var/backup > /var/backup/file_report.txt
free -h > /var/backup/disk_report.txt.free



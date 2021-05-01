#!/bin/bash

########################################
# Author:  Alejandra Sanvicente
# Date:    Feb/16/2021
#
# Description:
# Script that analyzes the employee schedule file to find the roulette delear at a
# specific time and date
#
# Inputs:
#    Date: MMDD
#    Time: HH:MM:SS AM/PM
#
##########################################


#echo "my name:"${0##*/}
#echo $#

if [ $# -ne 3 ];
 then
	echo "Not enough arguments"
	echo "Usage: ${0##*/} MMDD HH:MM:SS AM/PM"
	exit 1
else

#Getting first argument: Date
LOG_FILE_NAME=$1"_Dealer_schedule"

#Getting second argument: Time and removing periods from a.m. and p.m.
LOG_TIME=$2" "$(echo $3 | tr -d .)


#echo "File name: $LOG_FILE_NAME"
#echo "Time: $LOG_TIME"

grep -i "$LOG_TIME" $LOG_FILE_NAME | awk -F' ' '{print $1, $2, $5, $6}'
fi

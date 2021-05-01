#!/bin/bash

###################################################
# Author: Alejandra Sanvicente
# Date: Feb-15-2021
##################################################
# Script to find the dealer at a specific game during a given time and day
# Expected inputs:
#    Date:  MMDD
#    Time:  HH:MM:SS AM/PM
#    Game:
#            r - roulette
#            b - blackjack
#            t - texas hold em
###################################################




#echo "my name:"${0##*/}
#echo $#
if [ $# -ne 4 ];
 then
        echo "Not enough arguments"
        echo "Usage: ${0##*/} MMDD HH:MM:SS AM/PM r/b/t"
        exit 1
else

#Getting the name of the file where we have to search 
LOG_FILE_NAME=$1"_Dealer_schedule"
#echo "File: $LOG_FILE_NAME"

#Getting the time that we have to look for
LOG_TIME=$2" "$(echo $3 | tr -d .)
#echo "Time: $LOG_TIME"

#Getting the casino game
CASINO_GAME=$4

#Getting the game requested
case $CASINO_GAME in
	r)
		#Roulette
		#echo "Roulette"
		grep -i "$LOG_TIME" $LOG_FILE_NAME | awk -F' ' '{print $1, $2, $5, $6}'
	;;
	b)
		#Blackjack
		#echo "Blackjack"
		grep -i "$LOG_TIME" $LOG_FILE_NAME | awk -F' ' '{print $1, $2, $3, $4}'
	;;
	t)
		#Texas hold em
		#echo "Texas hold em"
		grep -i "$LOG_TIME" $LOG_FILE_NAME | awk -F' ' '{print $1, $2, $7, $8}' 
	;;
	*)
		#Unknown
		echo "game not supported"
		exit 1
	;;
esac

fi




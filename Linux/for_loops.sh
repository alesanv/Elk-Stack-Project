#!/bin/bash


#variables
states=(Oregon California Washington Hawaii Alaska "New York")


for state in "${states[@]}"
do
    echo $state

    if [ "$state" == Hawaii ]
    then
	echo "================ Hawaii #1!!!"
    else
        echo "$state is just okay"
    fi
done


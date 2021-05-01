#!/bin/bash


#WEEK 06
#Activity File: My First Bash Script



#variables
# do not put quotes in the path name...
output_file=~/my_research/sys_info.txt


echo "This is My First Bash Script Activity"
echo "Today's date is: $(date)"
echo "Machine's uname information is: $(uname -a)"


#Getting the machine's ip address
my_ip=$(ifconfig | head | tail -1 | awk -F' ' '{print $2}')
echo "My ip address is: $my_ip"
echo "The hostname is: $HOSTNAME"



if [ ! -d ~/my_research ]
then
     mkdir ~/my_research
fi

if [ -f $output_file ]
then
     rm $output_file
fi

find /home -type f -perm 777 2>/dev/null >> $output_file
ps aux | head >> $output_file


# Paths of shadow and passwd files 
files=('/etc/passwd' '/etc/shadow')

# this loop will print out the permissions for each file
for file in ${files[@]}
do
   ls -l $file >> $output_file
done


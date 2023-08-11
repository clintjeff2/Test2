#!/bin/bash
echo "please enter your group"
read group
sudo groupadd $group
echo "please enter the number of users you want to create"
read num

while [[ $num -ge 1 ]] ; do
 echo "enter user$num's username:"
 read username
 sudo useradd $username
 sudo passwd $username
 sudo usermod -aG $group $username
 sudo chage $username
 echo "-----------------------------------------------------" 
 num=$(($num-1))
done 
cat /etc/passwd
tail -10 /etc/passwd

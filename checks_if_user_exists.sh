#!/bin/bash

<<help
  This script will help to check 
  user existance.
help

read -p "Enter the username you wish to check : " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo "User does not exist"
else
	echo "User exists"

fi


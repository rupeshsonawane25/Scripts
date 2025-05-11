#!/bin/bash

<<info
   This script will help to create users 
   using functions.
info

function create_user {

read -p "Enter the username : " username

sudo useradd -m $username 

echo "user created successfully"

}

#create_user
#create_user

for ((i=1; i<=3; i++))
do 
	create_user
done

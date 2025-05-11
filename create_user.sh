#!/bin/bash

<<help
      This script will create 
      a new user.
help

echo "=========== Creation of user started ============"

read -p "Enter the username : " username

read -s -p "Enter the password : " password

sudo useradd -m $username

echo -e "$password\n$password" | sudo passwd $username

echo "========== Creation of user completed ==========="

sudo userdel $username

cat /etc/passwd | grep $username | wc | awk '{print $1}'

echo "As wc is 0 the user is deleted.."

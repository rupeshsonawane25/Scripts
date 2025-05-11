#!/bin/bash

<<help
  This script will help to install 
  the packages.
help

echo "Installing : $1"

sudo apt-get update > /dev/null

sudo apt-get install $1 -y > /dev/null

echo "Installation is completed..."

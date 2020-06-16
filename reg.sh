#!/bin/bash
echo "Welcome to User Registration"
shopt -s extglob

read -p "Enter the Valid username: " $username

if [[ $username =~ ^([A-Z]{1})+([a-z]{2,})$ ]]; then
	
	echo "valid- " $username
else
	echo "Invalid- " $username 

fi

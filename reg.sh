#!/bin/bash
echo "Welcome to User Registration"
shopt -s extglob

read -p "Enter the Valid firstname: " $firstname
read -p "Eter the valid Last name: " $lastname
pat="^([A-Z]{1})+([a-z]{2,})$"
if [[ $firstname =~ $pat && $lastname =~ $pat ]]; then
	
	echo "valid-  $firstname $lastname"
else
	echo "Invalid-  $firstname $lastname"

fi


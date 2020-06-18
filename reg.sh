#!/bin/bash
echo "Welcome to User Registration"
shopt -s extglob

read -p "Enter the Valid firstname: " firstname
read -p "Eter the valid Last name: " lastname
read -p "Enter the valid Email ID: " email
pat="^([A-Z]{1})+([a-z]{2,})$"
pattren="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$"
if [[ $firstname =~ $pat && $lastname =~ $pat ]]; then
	
	echo "valid-  $firstname $lastname"
	if [[ $email =~ $Email_pattren ]]; then
		echo "Your email is sucessfully valid"
		#statements
	fi
else
	echo "Invalid-  $firstname $lastname"

fi


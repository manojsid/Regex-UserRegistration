#!/bin/bash
echo "Welcome to User Registration"
shopt -s extglob

read -p "Enter the Valid firstname: " firstname
read -p "Eter the valid Last name: " lastname
read -p "Enter the valid Email ID: " email
read -p "Enter the valid Mobile: " Mobile
pat="^([A-Z]{1})+([a-z]{2,})$"
pattren="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$"
phone_pattren="^[0-9]{2}[[:space:]][0-9]{10}$"
if [[ $firstname =~ $pat && $lastname =~ $pat ]]; then
	echo "valid-  $firstname $lastname"
		
		if [[ $email =~ $Email_pattren ]]; then
			echo "Your email is sucessfully valid"
		else
			echo "Please provide valid Email ID"	
		fi
			
			if [[ $Mobile =~ $phone_pattren ]]; then
				echo "Your Mobile number is verified"
			else
				echo "Please provide the Valid Mobile number"
			fi

else
	echo "Invalid-  $firstname $lastname"

fi

read -p "Enter your Password: " pass
function password_check(){
	passpattern1="^([a-zA-Z0-9!@#]{8,})$"
	passpattern2="^([a-z0-9!@#]*)[A-Z]+([a-z0-9!@#]*$)"
	if [[ $pass =~ $passpattern1 ]]; then
		if [[ $pass =~ $passpattern2 ]]; then	
			echo "Password is Valid."
		else
			echo "Error - At least one Upper case is required. Please try again"
		fi
	else
		echo "Error - Password should be of atleast 8 characters. Please try again."
	fi
}
password_check



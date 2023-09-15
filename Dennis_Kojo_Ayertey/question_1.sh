#!/bin/bash

# Author: Dennis Kojo Ayertey
# Date Created: 15th September, 2023
# Date Modified: 15th September, 2023

# Welcome Message
name="Kofi Ezedike"
echo "Hello $name! Welcome to Canada!"

sleep 2s
echo "Thanks for opening your checking account with us at RBC! Kindly note that your credit limit of "\$2000" has been approved."

# Credit card information
sleep 2s
echo -e "Your credit card number is XXXXXXX4412 with CVC of 113 which expires on 05/26.\n"

# Instructions on what you need to activate your card
sleep 2s
echo -e "To be able to set up your PIN, you need activate your card.\nYou will need your last four card number and CVC.\n"

# Detailed Instructions
sleep 4s
echo -e "Kindly insert your card.\n"

sleep 2s
# Entering last four card number
read -p "Enter the last four number of your card: " card_last_four_number
echo

# Entering CVC
read -sp "Enter your CVC: " cvc
echo

# Prompt the user to enter a PIN
read -sp "Enter your PIN: " pin
echo

# Prompt the user to re-enter the PIN
read -sp "Re-enter your PIN: " pin2
echo

# Check matching of the PINs
if [ "$pin" == "$pin2" ]; then
	echo "PIN set successfully."

else
	echo "PIN entered do not match. Please try again."
fi

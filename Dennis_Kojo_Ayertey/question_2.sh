#!/bin/bash

# Author: Dennis Kojo Ayertey
# Date Created: 15th September, 2023
# Date Modified: 15th September, 2023

# Assumptions
pin=1957
postcode="T4E5J1"
cvc=113
last_four_number=4412
name="Kofi"

echo "Hello $name, kindly input the following information before checkout your purchase"

# Account number
sleep 2s
read -p "Enter your account number: " input
echo

if [ ${#input} -ne 16 ]  && [  "$last_four_number"!="${input: -4}" ]; then
	echo "Transaction declined"
	exit 1
fi

# Post code
sleep 1s
read -p "Enter postcode: " entered_postcode
echo

if [ "$postcode"!="$entered_postcode" ]; then
	echo "Transaction declined"
	exit 1
fi

# CVC
sleep 1s
read -sp "Enter CVC: " entered_cvc
echo

if [ "$cvc"!="$entered_cvc" ]; then
       echo "Transaction declined"
       exit 1
fi

sleep 1s
if [ ${#input} -eq 16 ] && [ "$last_four_number"="${input: -4}" ] && [ "$postcode"="$entered_postcode" ] && [ "$cvc"="$entered_cvc" ]; then
	echo "Your order is successful. Thanks for buying on Udemy.com"
else
	echo "Your card has been blocked! Contact your bank for further details"
fi

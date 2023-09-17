#!/bin/bash

# Author: Dennis Kojo Ayertey
# Date Created: 15th September, 2023
# Date modified: 15th September, 2023

credit_limit=2000

# Assmptions
sql_course=500
python_course=200
bash_course=600
terraform_course=300

# Calculate the total
total=$((slq_course + python_course + bash_course + terraform_course))

read -p "Total purchase is: \$$total"

if [ "$total" -le "$credit_limit" ]; then
	echo "Your transaction has been approved"
else
	echo "You have exceeded your credit limited. Your trasaction has been declined"
fi

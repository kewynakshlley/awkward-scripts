#!/bin/bash

echo "#print all commanders"
awk '/commander/ {print}' data.txt

echo "print all lines with selected fields"
awk '{print $1, $4}' data.txt

echo "print specific lines and specific fields"
awk '/soldier/ {print $1, $4}' data.txt

echo "numbered lines"
awk '{print NR, $0}' data.txt

echo "show last field"
awk '{print $NF}' data.txt

echo "from 3 to 5"
awk 'NR==3, NR==5 {print NR, $0}' data.txt
#!/bin/bash

n=$1
# -gt -lt -eq -ge -le

if [ n -gt 100 ]
then
    echo "Given number is greater than 100"
else
    echo "Given number is less than or equal to 100"
    
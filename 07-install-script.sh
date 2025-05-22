#!/bin/bash

abcdefg=$(id -u)

if [ $abcdefg -ne 0 ]
then 
    echo "Error:: You must have access to execute the script"
    exit 1 #other tahn 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing MYSQL ... FAILURE"
        exit 1
    else
        echo "Installing MYSQL ... SUCCESS"
    fi
else
    echo "MYSQL is already ... INSTALLED"
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installing Git ...FAILURE"
    exit 1
else 
    echo "Installing Git ... SUCCESS"
fi
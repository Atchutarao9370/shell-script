#!/bin/bash
USRERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error:: You must have sudo access to execute thi script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing MYSQL ... FAILURE"
        exit 1
    else
        echo "Installing MYSQL ... SUCCESS"
    fi
else
    echo "MYSQL already INSTALLED"
fi
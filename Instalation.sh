#!/bin/bash/

USERID=$(id -u)
#echo "USER ID is : $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run this script root priveleges"
fi

dnf install git
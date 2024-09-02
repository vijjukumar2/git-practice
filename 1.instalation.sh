#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " this script run with root previleges"
    exit 1
fi

 dnf install git -y
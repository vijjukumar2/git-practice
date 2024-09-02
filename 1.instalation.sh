#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " this script run root previleges"
fi
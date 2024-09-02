#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " this script run with root previleges"
    exit 1
fi

 dnf list install git 

 if [ $? -ne 0 ]
 then
    echo "git not installed then install it .."
 else
    echo " git already instaleed nothing to do.."
 fi
  

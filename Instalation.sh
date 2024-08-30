#!/bin/bash/

USERID=$(id -u)
#echo "USER ID is : $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run this script root priveleges"
fi

dnf list install git

if [ $? -ne o ]
then 
    echo " git is not installed then install it"
    dnf install git -y
else
    echo "git is already installed nothing to do..."
fi   

dnf list install mysql

if [ $? -ne 0 ]
then
    echo " mysql is not installed then install it"
    dnf install mysql -y
else
    echo "mysql is already installed nothing to do..."
fi  
   

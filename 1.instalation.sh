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
     dnf install git -y
     if [ $? -ne 0 ]
     then 
          echo " git instalation not sucess  check it.."
          exit 1
     else
       echo " git instalation is sucess "
     fi
 else
    echo " git already instaleed nothing to do.."
 fi
   
dnf list install mysql
 if [ $? -ne 0 ]
 then
    echo "mysql not installed then install it .."
     dnf install mysql -y
     if [ $? -ne 0 ]
     then 
          echo " mysql instalation not sucess  check it.."
          exit 1
     else
       echo " mysql instalation is sucess "
     fi
 else
    echo " mysql already instaleed nothing to do.."
 fi
  

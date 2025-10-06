#!/bin/bash

UDERID=$(id -u)

if [ $USERID -ne 0 ]; then
 echo "ERROR:: Please run this with root user"
 exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ];then
 echo "ERROR:: Installing mysql is failure"
 exit 1
else 
 echo "Installing my sql is SUCCESS!!!"

fi
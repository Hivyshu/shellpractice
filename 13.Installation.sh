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
 echo "Installing mysql is SUCCESS!!!"

fi

dnf install nginx -y

if [ $? -ne 0 ];then
 echo "ERROR:: Installing nginx is failure"
 exit 1
else 
 echo "Installing nginx is SUCCESS!!!"

fi

dnf install mongodb -y

if [ $? -ne 0 ];then
 echo "ERROR:: Installing mongodb is failure"
 exit 1
else 
 echo "Installing mongodb is SUCCESS!!!"

fi
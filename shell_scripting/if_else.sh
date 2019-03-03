#!/bin/bash
echo "enter number"
read count
if [ $count -eq 100 ]
then echo "hey number entered equals to 100"
elif [ $count -gt 100 ]
then echo "hey number is greater than 100"
else [ $count -lt 100 ]
echo "hey number is lesser than 100"
fi

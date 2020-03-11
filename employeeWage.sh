#! /bin/bash

isPresent=1
empPresence=$(( RANDOM%2 ));

if [ $empPresence -eq $isPresent ];
then
		echo "employee present"
else
		echo "employee absent"
fi

#! /bin/bash

isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$(( RANDOM%3 ));

if [ $randomCheck -eq $isFullTime ];
then
		empHours=8;
elif [ $randomCheck -eq $isPartTime ];
then
		empHours=4;
else
		empHours=0;
fi

salary=$(( $empHours*$empRatePerHour ));
echo salary is $salary;

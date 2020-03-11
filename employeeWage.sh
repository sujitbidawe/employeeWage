#! /bin/bash

isPresent=1
randomCheck=$(( RANDOM%2 ));

if [ $randomCheck -eq $isPresent ];
then
		empHours=8;
		empRatePerHour=20;
		salary=$(( $empHours * $empRatePerHour ));

else
		salary=0;
fi

echo Employee wage is $salary;

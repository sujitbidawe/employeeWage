#! /bin/bash -x

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHour=20;
numWorkingDays=20;
#randomCheck=$(( RANDOM%3 ));

for (( days=1; days<=$numWorkingDays; days++ ))
do
	randomCheck=$(( RANDOM%3 ));
			case $randomCheck in
					$isFullTime)
							empHours=8
							;;
					$isPartTime)
							empHours=4
							;;
					*)
							empHours=0
							;;
			esac

salary=$(( $empHours*$empRatePerHour ));
totalSalary=$(( $totalSalary+$salary ));
echo salary is $salary;

done

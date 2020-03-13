#! /bin/bash -x

# CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHoursInMonth=10;
empRatePerHour=20;
numWorkingDays=20;

# VARIABLES
totalEmpHours=0;
totalWorkingDays=0;

while [[ $totalEmpHours -lt $maxHoursInMonth &&
			$totalWorkingDays -lt $numWorkingDays ]]
do
	(( totalWorkingDays++ ))
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

totalEmpHours=$(( $totalEmpHours+$empHours ))

done

totalSalary=$(( $totalEmpHours*$empRatePerHour ))

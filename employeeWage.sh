#! /bin/bash

# CONSTANTS FOR THE PROGRAM
isPartTime=1;
isFullTime=2;
maxHoursInMonth=10;
empRatePerHour=20;
numWorkingDays=20;

# VARIABLES
totalEmpHours=0;
totalWorkingDays=0;

declare -A empDailyWage

function getWorkingHours() {
	case $1 in
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
			echo $empHours
}

function calcDailyWage() {
	local empHrs=$1
	wage=$(($empHrs*$empRatePerHour))
	echo $wage
}

while [[ $totalEmpHours -lt $maxHoursInMonth &&
			$totalWorkingDays -lt $numWorkingDays ]]
do

	(( totalWorkingDays++ ))
	empHours="$( getWorkingHours $((RANDOM%3)) )"
	totalEmpHours=$(( $totalEmpHours+$empHours ))
	empDailyWage["Day "$totalWorkingDays]="$( calcDailyWage $empHours )"
done

totalSalary="$( calcDailyWage $empRatePerHour )"
echo "Daily wage" ${empDailyWage[@]}
echo "All Keys:" ${!empDailyWage[@]}

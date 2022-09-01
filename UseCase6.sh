#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalSalary=0
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
			$isPartTime )
				empHrs=4
			;;
			$isFullTime )
				empHrs=8
			;;
			*)
				empHrs=0
			;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
	((totalWorkingDays++))
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done
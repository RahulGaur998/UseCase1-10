#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHrInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
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
}

function getWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxHrInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkHours
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalSalary=$( getWage $totalEmpHr )
echo ${dailyWages[@]}

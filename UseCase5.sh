#!/bin/bash -x

isPartTime=1
isFullTime=2
numOfWorkingDays=20
empRatePerHr=20

totalSalary=0

for((day=1;day<=$numOfWorkingDays;day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isPartTime )
			empHrs=4
		;;
		$isFullTIme )
			empHrs=8
		;;
		*)
			empHrs=0
		;;
esac

salary=$(($empHrs*$empRatePerHr)) 	#dailyWage
totalSalary=$(($totalSalary+$salary))	#totalSalary

done

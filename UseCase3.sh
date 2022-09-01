#!/bin/bash -x

isPartTime=1
isFullTime=2
RandomCheck=$((RANDOM%3))
empRatePerHr=20

if (( $isPartTime == $RandomCheck ))
then
	empHrs=4
elif (( $isFullTime == $RandomCheck ))
then
	empHrs=8
else
	empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))
echo $salary

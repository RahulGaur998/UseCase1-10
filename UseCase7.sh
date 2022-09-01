#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalSalary=0
totalEmpHr=0
totalWorkingDays=0

function getEmpHrs()
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


while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
        getEmpHrs
        totalEmpHr=$(($totalEmpHr+$empHrs))
        ((totalWorkingDays++))
done
        totalSalary=$(($totalEmpHr*$empRatePerHr))






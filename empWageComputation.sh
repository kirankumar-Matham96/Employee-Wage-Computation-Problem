#!/bin/bash -x
echo "Wellcome to Employee Wage Computation Program!"

isPresent=1
isAbsent=0
isFullTime=1
isPartTime=2
empFullTimeHrs=8
empPartTimeHrs=4
empWageRatePerHr=20
attendanceCheck=$((RANDOM%2))
empHrsCheck=$((1+RANDOM%2))

if [ $isPresent -eq $attendanceCheck ]
then
	if [ $isFullTime -eq $empHrsCheck ]
	then
		empWageForTheDay=$(($empFullTimeHrs*$empWageRatePerHr))
	else
		empWageForTheDay=$(($empPartTimeHrs*$empWageRatePerHr))
	fi
else
	echo "Employee absent!"
fi

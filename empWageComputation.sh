#!/bin/bash -x
echo "Wellcome to Employee Wage Computation Program!"

isPresent=1
isAbsent=0
empFullTimeHrs=8
empWageRatePerHr=20
attendanceCheck=$((RANDOM%2))

if [ $isPresent -eq $attendanceCheck ]
then
	empWageForTheDay=$(($empFullTimeHrs*$empWageRatePerHr))
else
	echo "Employee absent!"
fi

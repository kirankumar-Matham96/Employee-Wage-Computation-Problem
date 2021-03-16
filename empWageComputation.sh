#!/bin/bash -x
echo "Wellcome to Employee Wage Computation Program!"

isPresent=1
isAbsent=0
attendanceCheck=$((RANDOM%2))

if [ $isPresent -eq $attendanceCheck ]
then
	echo "Employee present"
else
	echo "Employee absent!"
fi

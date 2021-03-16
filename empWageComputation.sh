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

case "$attendanceCheck" in
	$isPresent)
			case "$empHrsCheck" in
				$isFullTime)
						empWageForTheDay=$(($empFullTimeHrs*$empWageRatePerHr))
						;;
				$isPartTime)
						empWageForTheDay=$(($empPartTimeHrs*$empWageRatePerHr))
						;;
				*)
						echo "Error!"
						;;
			esac
			;;
	$isAbsent)
			echo "Employee absent!"
			;;
	*)
			echo "Error!"
			;;
esac

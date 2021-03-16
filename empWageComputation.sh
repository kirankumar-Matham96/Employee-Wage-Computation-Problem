#!/bin/bash -x
echo "Wellcome to Employee Wage Computation Program!"

isPresent=1
isAbsent=0
isFullTime=1
isPartTime=2
empFullTimeHrs=8
empPartTimeHrs=4
empWageRatePerHr=20
monthlyWorkingDays=20
totalWageFortheMonth=0 #To store total salary of the employee for the entire month

for ((day=1;day<=$monthlyWorkingDays;day++))
do
	attendanceCheck=$((RANDOM%2))
	empHrsCheck=$((1+RANDOM%2))

	case "$attendanceCheck" in
		$isPresent)
			case "$empHrsCheck" in
				$isFullTime)
						empWageForTheDay=$(($empFullTimeHrs*$empWageRatePerHr))
						totalWageForTheMonth=$(($totalWageForTheMonth+$empWageForTheDay))
						;;
				$isPartTime)
						empWageForTheDay=$(($empPartTimeHrs*$empWageRatePerHr))
						totalWageForTheMonth=$(($totalWageForTheMonth+$empWageForTheDay))

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
done

echo "Total employee wage for the month is: $totalWageForTheMonth"

#!/bin/bash -x
echo "Wellcome to Employee Wage Computation Program!"

isPresent=1
isAbsent=0
isFullTime=1
isPartTime=2
empFullTimeHrs=8
empPartTimeHrs=4
empWageRatePerHr=20
monthlyWorkingHrs=100
monthlyWorkingDays=20
empWorkingHrs=0
totalWageFortheMonth=0

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
						empWorkingHrs=$(($empWorkingHrs+$empFullTimeHrs))
						if [ $empWorkingHrs -eq $monthlyWorkingHrs ]
						then
							break;
						fi
						;;
				$isPartTime)
						empWageForTheDay=$(($empPartTimeHrs*$empWageRatePerHr))
						totalWageForTheMonth=$(($totalWageForTheMonth+$empWageForTheDay))
						empWorkingHrs=$(($empWorkingHrs+$empPartTimeHrs))
						if [ $empWorkingHrs -eq $monthlyWorkingHrs ]
						then
							break;
						fi
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

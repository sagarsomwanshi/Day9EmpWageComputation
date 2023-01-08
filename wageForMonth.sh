#!/bin/bash -x

wagePerHour=20
empHour=0
partEmpHour=0
totalHour=0
partTotalHour=0

for((day=1; day<21; day++ ))
do
	rancheck=$((RANDOM%3))

	case $rancheck in
		1)
			empHour=8 ;;
		2)
			empHour=4 ;;
		*)
	esac
		totalHour=$((totalHour+empHour))
done

for((pDay=1; pDay<21; pDay++))
do
	partTimeEmp=$((RANDOM%2))

	case $partTimeEmp in
		1)
			partEmpHour=8 ;;
		*)
esac
		partTotalHour=$(($partTotalHour+$partEmpHour))
done

monthWage=$(($totalHour*$wagePerHour))
partMonthWage=$(($partTotalHour*$wagePerHour))

echo "Wage of Regular Employee for Month : $monthWage"

case $partDailyWage in
	0)
		echo " " ;;
	*)
		echo "Wage of part time employee for Month : $partMonthWage" ;;
esac

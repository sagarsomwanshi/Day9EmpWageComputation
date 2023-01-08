#!/bin/bash -x

wagePerHour=20
empHour=0
partTimeEmp=$((RANDOM%2))
partEmpHour=0
rancheck=$((RANDOM%3))

case $rancheck in
	1)
		echo "Regular employee is Present For full day"
		empHour=8 ;;
	2)
		echo "Regular employee isPresent For Half day"
		empHour=4 ;;
	*)
		echo "Regular employee is Absent" ;;
esac

case $partTimeEmp in
	1)
		echo "Part Time employee is present"
		partEmpHour=8 ;;
	*)
		echo "Part Time employee is Absent"
		partEmpHour=0 ;;
esac

dailyWage=$(($empHour*$wagePerHour))
partDailyWage=$(($partEmpHour*$wagePerHour))

echo "Wage of Regular Employee : $dailyWage"
case $partDailyWage in
	0)
		echo " " ;;
	*)
		echo "Wage of part time employee : $partDailyWage" ;;
esac

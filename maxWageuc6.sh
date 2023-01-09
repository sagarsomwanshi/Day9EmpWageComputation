#!/bin/bash -x

wagePerHour=20
empHour=0
partEmpHour=0
totalHour=0
partTotalHour=0
totalDay=0
partTotalDay=0
preDay=0
absDay=0
partPreDay=0
partAbsDay=0

while(( ((totalDay<=20)) && ((totalHour<=100)) ))
do
	rancheck=$((RANDOM%3))
	case $rancheck in
		1)
			((preDay++))
			empHour=8 ;;
		2)
			((preDay++))
			empHour=4 ;;
		*)
			((absDay++))
			empHour=0 ;;
	esac
		totalHour=$(($totalHour+$empHour))
		totalDay=$(($totalDay + $(($preDay + $absDay)) ))
done

while(( ((partTotalDay<20)) && ((partEmpHour<=100)) ))
do
	partTimeEmp=$((RANDOM%2))

	case $partTimeEmp in
		1)
			((partPreDay++))
			partEmpHour=8 ;;
		*)
			((partAbsDay++))
			partEmpHour=0 ;;
	esac
		partTotalHour=$(($partTotalHour+$partEmpHour))
		partTotalDay=$(($partTotalDay + $(($partPreDay+$partAbsDay)) ))
done

monthWage=$(($totalHour*$wagePerHour))
partMonthWage=$(($partTotalHour*$wagePerHour))

echo "Regular employee present days : $preDay"
echo "Wage of regular employee for Month : $monthWage"
echo "Part time employee present days : $partPreDay "
echo "Wage of part time employee for Month : $partMonthWage"


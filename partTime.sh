#!/bin/bash -x

wagePerHour=20
empHour=0
partTimeEmp=$((RANDOM%2))
partEmpHour=0
rancheck=$((RANDOM%3))

if(($rancheck==1))
then
	echo "Regular employee is Present For full day"
	empHour=8
elif(($rancheck==2))
then
	echo "Regular employee isPresent For Half day"
	empHour=4
else
	echo "Regular employee is Absent"
fi

if((partTimeEmp==1))
then
	echo "Part Time employee is present"
	partEmpHour=8
else
	echo "Part Time employee is Absent"
	partEmpHour=0
fi

dailyWage=$(($empHour*$wagePerHour))
partDailyWage=$(($partEmpHour*$wagePerHour))

echo "Wage of Regular Employee : $dailyWage"
if((partDailyWage==0))
then
	echo " "
else
	echo "Wage of part time employee : $partDailyWage"
fi

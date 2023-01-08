#!/bin/bash -x

wagePerHour=20
empHour=0
rancheck=$((RANDOM%3))

if(($rancheck==1))
then
	echo "Present For full day"
	empHour=8
elif(($rancheck==2))
then
	echo "Present For Half day"
	empHour=4
else
	echo "Absent"
fi

dailyWage=$(($empHour*$wagePerHour))


echo "Wage : $dailyWage"


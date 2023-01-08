#!/bin/bash -x

wagePerHour=20

read -p "Enter the Working hours : " hour

dailyWage=$(($hour*$wagePerHour))

echo "Wage : $dailyWage"


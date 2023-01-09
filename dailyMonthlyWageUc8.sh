#!/bin/bash -x

wagePerHour=20
empHour=0
fullDay=1
halfDay=2
totalHour=0
partTotalHour=0
totalDay=1
partTotalDay=1

function workHour(){
		case $1 in
               		$fullDay)
                    	 	  empHour=8 ;;
               		$halfDay)
               		   	  empHour=4 ;;
               		*)
              		   	  empHour=0 ;;
        	esac
		echo $empHour

}

while(( ((totalDay<=20)) && ((totalHour<=100)) ))
do
	dailyHour=$(workHour $((RANDOM%3)))
	dailyWage=$(($dailyHour*$wagePerHour))
	echo "wage of regular employee for Day = $dailyWage"
	totalHour=$(($totalHour+$dailyHour))
	((totalDay++))
done

echo ""

while(( ((partTotalDay<=20)) && ((partTotalHour<=100)) ))
do
        partDailyHour=$(workHour $((RANDOM%3)))
	partDailyWage=$(($partDailyHour*$wagePerHour))
	echo "wage of part time employee for Day = $partDailyWage"
        partTotalHour=$(($partTotalHour+$partDailyHour))
        ((partTotalDay++))
done



monthWage=$(($totalHour*$wagePerHour))
partMonthWage=$(($partTotalHour*$wagePerHour))
echo ""
echo "Wage of regular employee for Month : $monthWage"
echo "Wage of part time employee for Month : $partMonthWage"

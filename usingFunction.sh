#!/bin/bash -x

wagePerHour=20
empHour=0
fullDay=1
halfDay=2
totalHour=0
partTotalHour=0
totalDay=0
partTotalDay=0

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
	totalHour=$(($totalHour+$dailyHour))
	((totalDay++))
done

while(( ((partTotalDay<=20)) && ((partTotalHour<=100)) ))
do
        partDailyHour=$(workHour $((RANDOM%3)))
        partTotalHour=$(($partTotalHour+$partDailyHour))
        ((partTotalDay++))
done



monthWage=$(($totalHour*$wagePerHour))
partMonthWage=$(($partTotalHour*$wagePerHour))

echo "Wage of regular employee for Month : $monthWage"
echo "Wage of part time employee for Month : $partMonthWage"

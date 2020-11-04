#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
WagePerHour=20
FullDayHour=8
PartimeHour=4
days=0
echo -e "Day No. \t DailyWage \t TotalWage"
while [[ $Days -ne 20 && $TotalHours -ne 100 ]]
do
attendance=$((RANDOM%2))
partime=$((RANDOM%2))
((Days++))
	case $attendance in
		1)
			echo "Employee is Present"
			if(( $partime == 1 ))
			then
				echo "Employee is working Fulltime"
				wage=`expr $WagePerHour \* $FullDayHour`
				Hours=$FullDayHour
			else
				echo "Employee is working Halftime"
				wage=`expr $WagePerHour \* $PartimeHour`
				Hours=$PartimeHour
			fi
			;;
		0)
			echo "Employee is Absent"
			Hours=0
			wage=0
			Hours=0
			;;
		*)
			echo "Invalid Entry"
			;;
	esac
TotalHours=`expr $TotalHours + $Hours`
TotalWage=`expr $TotalWage + $wage`
echo -e "$Days \t $wage \t $TotalWage"
done

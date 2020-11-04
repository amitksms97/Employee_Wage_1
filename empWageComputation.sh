#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
WagePerHour=20
FullDayHour=8
PartimeHour=4
days=0
while [[ $days -ne 20 && $Totalhours -ne 100 ]]
do
attendance=$((RANDOM%2))
partime=$((RANDOM%2))
((days++))
case $attendance in
	1)
		echo "Employee is Present"
		if(( $partime == 1 ))
		then
			echo "Employee is working Fulltime"
			Hours=$FullDayHour
		else
			echo "Employee is working Halftime"
			Hours=$PartimeHour
		fi
		;;
	0)
		echo "Employee is Absent"
		Hours=0
		;;
	*)
		echo "Invalid Entry"
		;;
esac
Totalhours=`expr $Totalhours + $Hours`
done

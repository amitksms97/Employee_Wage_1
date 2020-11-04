echo "Welcome to Employee Wage Computation Program"
WagePerHour=20
FullDayHour=8
PartimeHour=4
attendance=$((RANDOM%2))
partime=$((RANDOM%2))
if(( $attendance == 1 ))
then
	echo "Employee is Present"
	if(( $partime == 1 ))
	then
		echo "Employee is working Fulltime"
	else
		echo "Employee is working Halftime"
	fi
else
	echo "Employee is Absent"
fi

echo "Welcome to Employee Wage Computation Program"
WagePerHour=20
FullDayHour=8
attendance=$((RANDOM%2))
if(( $attendance == 1 ))
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

echo "Welcome to Employee Wage Computation Program"
WagePerHour=20
FullDayHour=8
PartimeHour=4
for (( i=1; i<=20; i++ ))
do
attendance=$((RANDOM%2))
partime=$((RANDOM%2))
case $attendance in
	1)
		echo "Employee is Present"
		if(( $partime == 1 ))
		then
			echo "Employee is working Fulltime"
		else
			echo "Employee is working Halftime"
		fi
		;;
	0)
		echo "Employee is Absent"
		;;
	*)
		echo "Invalid Entry"
		;;
esac
done

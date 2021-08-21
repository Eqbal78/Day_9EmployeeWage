#!/bin/bash 

echo "Welcome to Employee Wage Computation"

Attendance=$((RANDOM%2))

if [ $Attendance -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi

isPartTime=2
isFullTime=1
empRatePerHr=20

checksum=$((RANDOM%3))

if [[ $isFullTime -eq $checksum ]]
then
    empHrs=8;
	 echo "Employee Fulltime"
elif [[ $isPartTime -eq $checksum ]]
then
    empHrs=4;
	 echo "Employee Parttime"
else
	 empHrs=0;
	 echo "Employee Absent"
fi

echo "dailyWage=$(($empHrs*$empRatePerHr))"

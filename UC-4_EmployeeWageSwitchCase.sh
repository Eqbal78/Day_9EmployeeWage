#!/bin/bash 

echo "Welcome to Employee Wage Computation"

Attendance=$((RANDOM%2))

if [ $Attendance -eq 1 ]
then
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi

isPartTime=0
isFullTime=1
empRatePerHr=20

if [[ $isFullTime -eq $Attendance ]]
then
    empHrs=8;
else
    empHrs=0;
    empHrs=4;
fi
echo "dailyWage=$(($empHrs*$empRatePerHr))"

checksum=$((RANDOM%3))
case $checksum in
   $isFullTime)
      empHrs=8;;
   $isPartTime)
      empHrs=4;;
   *)
      empHrs=0;;
esac

echo "dailyWage using switch case=$(($empHrs*$empRatePerHr))"

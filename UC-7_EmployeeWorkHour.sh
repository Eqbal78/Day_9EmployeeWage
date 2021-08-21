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
numWorkingDays=20
maxHrsInMnth=100

if [[ $isFullTime -eq $Attendance ]]
then
    empHrs=8;
else
    empHrs=0;
    empHrs=4;
fi
#echo "dailyWage=$(($empHrs*$empRatePerHr))"

totalWorkingDays=0
totalWorkHours=1

function getWorking() {
   case $checksum in
      $isFullTime)
         empHrs=8;;
      $isPartTime)
         empHrs=4;;
      *)
         empHrs=0;;
   esac
   return
}


while [[ $totalWorkingDays -lt $numWorkingDays && $totalWorkHours -lt $maxHrsInMnth ]]
do
   ((totalWorkingDays++))
   ((totalWorkHours++))

   checksum=$((RANDOM%3))
	empHrs=$(($getWorking "$checksum"))

   totalWorkHours=$(($totalWorkHours+$empHrs))
done

#echo "dailyWage = $(($empHrs*$empRatePerHr))"
#echo "MonthyWage = $(($totalWorkingDays * $empRatePerHr))"

echo "totalWorkingHours is : $totalWorkHours"


#echo "totalWages = $(( $totalWorkHours*$empRatePerHr ))"

#!/bin/bash -x
isFullTime=2
empRatePerHr=20
maxHrsInMonth=100
numWorkingDays=20
totalWorkHours=0
totalWorkingDays=0
function getWorkingHours() {
         case $1 in
                  $isFullTime)
                        empHrs=8;
                        ;;
                  $isPartTime)
                        empHrs=4;
                        ;;
                  *)
                        empHrs=0;
                        ;;
         esac
}


function getEmpWage() {
        echo $(($1*$empRatePerHr))
}


while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        getWorkingHours $((RANDOM%3))
        totalWorkHours=$(($totalWorkHours+$empHrs))
        dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr)) 
done

totalSalary="$( getEmpWage $totalWorkHours )"

#!/bin/bash
read -p "Please enter a date  in 4 digits (mmdd) format : "  _date
read -p "Please enter the time  in  hh:mm:ssAM/PM format : " _time

if [[ "$_date" == "" ]] 
then
	echo "Invalid or no date entered. Script terminated."
	exit
fi

if [[ "$_time" == "" ]] 
then
echo "Invalid or no time  entered. Script terminated."
        exit 
fi

awk  '{print $1 $2,$5,$6}' $_date* | grep $_time




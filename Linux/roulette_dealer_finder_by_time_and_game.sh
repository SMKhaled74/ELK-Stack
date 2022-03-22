#!/bin/bash

read -p "Please enter a date  in 4 digits (mmdd) format : "  _date
read -p "Please enter the time  in  hh:mm:ssAM/PM format : " _time
read -p "Please a enter game number (1 for Blackjack, 2 for Roulette,3 for Texas Hold 'EM) :" _game

if [ "$_date" == "" ] 
then
	echo -e  "\n\e[1;41m Invalid or no date entered. Script terminated.\e[0m\n"
	exit
fi

if [[ "$_time" == "" ]] 
then
	echo -e "\n\e[1;41m Invalid or no time  entered. Script terminated.\e[0m\n"
        exit 
fi

if [ "$_game" == "" ] 
then
	echo -e "\n\e[1;41m Invalid or no game number  entered. Script terminated.\e[0m\n"
        exit 
fi

if [ ! -f $_date* ]
then

	echo -e "\n\e[1;41m Invalid date or No data available on given date.\e[0m\n"
        exit 

fi


if [ "$_game" == "1" ]
then
	res=$(awk  '{print $1 $2,$3,$4}' $_date* | grep $_time)
elif [ "$_game" == "2" ]
then
	res=$(awk  '{print $1 $2,$5,$6}' $_date* | grep $_time)
elif [ "$_game" == "3" ]
then
	res=$(awk  '{print $1 $2,$7,$8}' $_date* | grep $_time)
else
	echo -e "\n\e[1;41m No record found for the  given value.\e[0m\n"
        exit 

fi

if [ "$res" == "" ]
then

	echo -e "\n\e[1;41m No record found for the given value.\e[0m\n"
else
	echo -e "\n\e[1;42m $res \e[0m\n"
fi





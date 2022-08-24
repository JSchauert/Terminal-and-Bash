#!/bin/bash
echo "What game? 1=Blackjack 2=Roulette 3=Texas Hold Em"
read input
if [ $input = "1" ]; then 
	echo "what time (EX: 08:00)"
	read TIME
	echo "AM or PM?"
	read AMPM
	echo "which date (EX: 0310 for March 10th)"
	read DATE
	grep ${TIME}:00 ${DATE}_Dealer_schedule | grep -i ${AMPM} | awk '{print "Time: " $1, $2, "Blackjack Dealer: " $3, $4}'
fi
if [ $input = "2" ]; then
	echo "what time (EX: 08:00)"
	read TIME
	echo "AM or PM?"
	read AMPM
	echo "which date (EX: 0310 for March 10th)"
	read DATE
	grep ${TIME}:00 ${DATE}_Dealer_schedule | grep -i ${AMPM} | awk '{print "Time: " $1, $2, "Roulette Dealer: " $5, $6}'
fi
if [ $input = "3" ]; then
	echo "what time (EX: 08:00)"
	read TIME
	echo "AM or PM?"
	read AMPM
	echo "which date (EX: 0310 for March 10th)"
	read DATE
	grep ${TIME}:00 ${DATE}_Dealer_schedule | grep -i ${AMPM} | awk '{print "Time: " $1, $2, "Texas Hold Em Dealer: " $7, $8}'
fi


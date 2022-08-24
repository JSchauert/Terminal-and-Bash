#!/bin/bash
echo "what time (EX: 08:00)"
read TIME
echo "AM or PM?"
read AMPM
echo "which date (EX: 0310 for March 10th)"
read DATE
grep ${TIME}:00 ${DATE}_Dealer_schedule | grep -i ${AMPM} | awk '{print "Time: " $1, $2,"Dealer: "$5, $6}'


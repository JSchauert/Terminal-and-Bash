#!/bin/bash
grep '0[58]:00:00 AM\|0[28]:00:00 PM\|11:00:00 PM' 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}'


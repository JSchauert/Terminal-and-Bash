#!/bin/bash
bash 0310_Dealers.sh >> Dealers_working_during_losses
bash 0312_Dealers.sh >> Dealers_working_during_losses
bash 0315_Dealers.sh >> Dealers_working_during_losses
awk '{print $1, $2, $3, $4}' Dealers_working_during_losses >> Notes_Dealer_Analysis


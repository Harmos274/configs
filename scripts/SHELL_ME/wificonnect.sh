#!/bin/bash

printf "Réseaux disponible : \n"
iw wlp3s0 scan | grep SSID
printf "Veuillez entrer le SSID voulu : "
read -r SSID
SSID=`echo $SSID`
printf "\nMDP : "
read -s MDP
MDP=`echo $MDP`
printf "\n\n####################################"
nmcli dev wifi connect $SSID password $MDP

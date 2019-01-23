#!/bin/zsh

source $HOME/.localrc
BIN=$HOME/.dotfiles/bin

LOCATION=`$BIN/LocateMe -f "{LAT} {LON}"` 2>/dev/null
if [ $? -eq 0 ]; then
        LAT=$(echo $LOCATION | awk '{print $1}') 
        LON=$(echo $LOCATION | awk '{print $2}') 
        LATITUDE=$LAT LONGITUDE=$LON $BIN/weather
else
        echo "? °C"
fi

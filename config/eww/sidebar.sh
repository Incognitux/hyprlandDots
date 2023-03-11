#!/bin/bash

## Files and cmd
FILE="$HOME/.cache/ewwsidebar.xyz"
EWW="$HOME/.local/bin/eww"
SIDEBAR="$HOME/.config/eww"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

## Open widgets
run_eww() {
	${EWW} -c ${SIDEBAR} open --screen 0 sidebar
}

## Launch or close widgets accordingly
if [[ ! -f "$FILE" ]]; then
	touch "$FILE"
	#sh ${DASHBOARD}/scripts/quotes update
	#sh ${DASHBOARD}/scripts/getweather --getdata
	run_eww
else
	${EWW} -c ${SIDEBAR} close-all
	rm "$FILE"
fi

#!/bin/bash
NOW=$(date +"%a")
echo $NOW
case $NOW in
	Monx)	
		echo "Full backup";;
	Tue|Wed|Thu|Fri)
		echo "Partial backup";;
	Sat|Sun)	
		echo "No backup";;
	*) ;;
esac


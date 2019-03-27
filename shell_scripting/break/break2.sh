#!/bin/bash
# set an infinite while loop
while :
do
	read -p "Enter number ( -9999 to exit ) : " n
        
        # break while loop if input is -9999  
	[ $n -eq -9999 ] && { echo "Bye!"; break; }

	isEvenNo=$(( $n % 2 ))  # get modules 
        [ $isEvenNo -eq 0 ] && echo "$n is an even number." || echo "$n is an odd number."

done

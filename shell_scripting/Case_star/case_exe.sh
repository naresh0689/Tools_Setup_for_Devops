#!/bin/bash
echo " Select the Vehicle For Rental"
echo
echo "  1) Car"
echo "  2) van"
echo "  3) jeep"
echo "  4) bicycle"
echo "  5) enfield"
echo "  6) thunderbird"

read -p "Select an option [1-6]: " rental

case $rental in
   1)
   echo 
   echo "For car rental is Rs.20 per k/m."
   ;;
   2)
   echo
   echo "For van rental is Rs.10 per k/m."
   ;;
   3)
   echo
   echo "For jeep rental is Rs.5 per k/m."
   ;;
   4)
   echo
   echo "For bicycle rental 20 paisa per k/m."
   ;;
   5)
   echo
   echo "For enfield rental Rs.3  per k/m."
   ;;
   6) echo "For thunderbird rental Rs.5 per k/m."
   ;;
   *) echo "Sorry, I can not get a $rental rental  for you!"
   ;;
esac


#!/bin/bash

rm -f installed_packages.csv && \

dpkg-query -l | cut -c 5-91 > Installed_Pacakges.csv

cat -n Installed_Packages.csv > Installed_Packages_List.csv

rm -rf Installed_Pacakges_list.csv

if  [ -e /var/log/dpkg.log ];
then
echo " Recently no packages are upgraded"
else
grep " installed " /var/log/dpkg.log > recent__installed_packeges.csv
fi

#!/bin/bash
if [ -e Installed_Packages.csv ];
then
Previous=$(ls -rt1 | tail -1)
dpkg-query -l | cut -c 5-91 | sed '1,3d' > Installed_Packages.csv
cat Installed_Packages.csv > "Installed_Packages_List-`date '+%Y-%m-%d'`.csv"
Latest=$(ls -rt1 | tail -1)
else
dpkg-query -l | cut -c 5-91 | sed '1,3d' > Installed_Packages.csv
cat Installed_Packages.csv > "Installed_Packages_List-`date '+%Y-%m-%d'`.csv"
fi
diff $Previous $Latest
#if  [ -e /var/log/dpkg.log ];
#then
#grep " installed " /var/log/dpkg.log | sed 'y,:, ,' | awk '{ print $7,$9 }' > recent__installed_packeges.csv
#else
#echo " Recently no packages are upgraded"
#fi

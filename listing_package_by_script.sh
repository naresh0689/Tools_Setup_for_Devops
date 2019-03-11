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
comp $Previous $Latest
if  [ -e /var/log/dpkg.log ];
then
echo " Recently no packages are upgraded"
else
grep " installed " /var/log/dpkg.log > recent__installed_packeges.csv
fi

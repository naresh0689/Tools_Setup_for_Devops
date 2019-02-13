#!/bin/bash

rm -f installed_packages.csv && \

dpkg -l | grep '^.i' | tr -s ' ' | cut -d' ' -f2,3 | tr ' ' : | cut -d: -f1,2 > installed_packages.csv

cat -n installed_packages.csv > installed_packages_list.csv

grep " installed " /var/log/dkpg.log > recent__installed_packeges.csv


#!/bin/bash

LOGDIR=$(mktemp -d)
cd $LOGDIR
cp /var/log/dpkg.log* .

# grep the relevant lines from the log files
for file in dpkg.log*
do
  zgrep ' install ' "$file" > ins.${file%.gz}
done

# Merge all the install lines chronologically into a single file
cat $(ls -rv ins.*) > install.log

# Construct a list of all installed packages in the format packagename:arch
dpkg -l | grep '^.i' | tr -s ' ' | cut -d' ' -f2,4 | tr ' ' : | cut -d: -f1,2 > installed.list

OUTFILE=$(mktemp -p .)

for package in $(< installed.list)
do
  # Get only the most recent installation of the respective package
  grep " $package" install.log | tail -n1 >> "$OUTFILE"
done

sort "$OUTFILE" > newest-installs.log
echo "List of installed packages written to ${LOGDIR}/newest-installs.log"

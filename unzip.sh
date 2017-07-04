#/bin/bash

for x in $(ls -1 *.zip)
do
    unzip $x
done

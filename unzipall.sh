#/bin/bash

for x in $(ls -1 *.zip)
do
    unzip $x
    rm $x
done

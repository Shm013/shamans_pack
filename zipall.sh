#/bin/bash

for x in $(ls -1 -d */)
do
    len=`expr length $x`
    zipfile=`expr substr $x 1 $((len - 1))`.zip
    zip -r $zipfile $x
    rm -rf $x
done


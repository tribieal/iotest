#!/bin/bash
dd if=/dev/zero of=./10M.file bs=1M count=10
counter=3
echo "couter is" $counter
rmcounter=1


while true
do
    echo $counter 
    let "counter += 1"
    cp 10M.file 10M.file.$counter
    sleep 1
    let "rmcounter=counter-2"
    echo $rmcounter
    rm -rf 10M.file.$rmcounter
    
done

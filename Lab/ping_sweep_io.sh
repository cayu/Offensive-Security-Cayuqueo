#!/bin/bash
for i in $(cat targets.txt)
do
    ping -c 1 $i > results.txt
done

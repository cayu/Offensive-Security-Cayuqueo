#!/bin/bash
for ip in `seq 1 254`
do
  ping -c1 -w1 10.1.1.$ip
done

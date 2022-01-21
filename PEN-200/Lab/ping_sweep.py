#!/usr/bin/pyton
import os
for ping in range(1,254):
   ip="10.11.1."+str(ping)
   os.system("ping -c 1 %s" % ip)

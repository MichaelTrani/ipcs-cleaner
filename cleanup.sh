#!bin/bash

ipcs | grep pi | awk '{print $2}' | xargs -I {} ipcrm -q {} ||
ipcs | grep pi | awk '{print $2}' | xargs -I {} ipcrm -m {} ||
ipcs | grep pi | awk '{print $2}' | xargs -I {} ipcrm -s {} &> /dev/null

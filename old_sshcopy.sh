#!/bin/bash
# Zkopiruje SSH klice pro uzivatele root na pomerancich

for cislo in {01..30}
  do echo pomeranc$cislo 
  if [[ `fping -c 1 -t 850 192.168.33.1$cislo 2> /dev/null | awk '{print $10}'` == "0%" ]]; then 
    sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no root@pomeranc$cislo
  else 
    echo "NEpinga"  
  fi 
done

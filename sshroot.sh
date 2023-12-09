#!/bin/bash
# Skript pro zkop�rov�n� ssh kl��� do pomeran��
# Default range
start=00
end=30

# Funkce obsahuj�c� vlastn� �innost prov�d�nou na pomeran��ch
run_task() {
    # Argument $1 obsahuje ��slo pomeran�e
    if [[ `fping -c 1 -t 850 192.168.33.1$1 2> /dev/null | awk '{print $10}'` == "0%" ]]; then
     echo "Running task for Pomeranc$1" 
     sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no root@pomeranc$1
    else 
      echo "Pomeranc$1 NEpinga!!!"  
  fi 
}

# Check for the '-l' argument
if [[ "$1" == "-l" ]]; then
    # Shift to skip the '-l' argument
    shift
    # Loop through the remaining arguments
    for arg in "$@"; do
        # Extract the number part from the argument (assuming format 'pomerancXX')
        number=${arg#"pomeranc"}
        # Run the task for each specified number
        run_task "$number"
    done
else
    # Run the task for the default range if no '-l' is specified
    for i in $(seq -w $start $end); do
        run_task "$i"
    done
fi

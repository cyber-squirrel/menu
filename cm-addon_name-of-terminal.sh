#!/bin/bash
# termtest.sh: Run the tar command only if command run from a termina
tty -s
status=$?

if [ $status -eq 0 ]
then
    echo "Running backup using tar command..."
    # tar cvf /dev/st0 /home
else
    logger "$0 must run from a terminal"
fi
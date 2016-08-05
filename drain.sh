#!/bin/bash
touch /var/lib/dirac_drain
echo START=UNDEFINED > /etc/condor/config.d/00shutdown
kill -HUP $(cat /var/run/condor_master.pid)
while true; do
	L=$(ps -o pid --no-headers --ppid $(cat /var/run/condor_master.pid) | while read x; do ps -o pid --no-headers --ppid $x; done | wc -l)
        [ $L -le 0 ] && break
	sleep 1
done
condor_off

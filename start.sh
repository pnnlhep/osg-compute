#!/bin/bash -e

. /etc/sysconfig/condor
condor_master -f & pid=$!
trap "kill $pid" TERM; echo $pid > /var/run/condor_master.pid; wait $pid

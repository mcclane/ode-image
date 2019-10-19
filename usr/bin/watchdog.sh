#!/bin/sh
#
WD=/usr/sbin/watchdog

SERIAL=`cat /proc/cpuinfo | grep Serial | sed -e 's/Serial[ \t]*:[ \t]*0*//'`
if [ "$SERIAL" = "" ] ; then
   exec $WD -c watchdog
else
   exec $WD -c watchdog -c payload
fi

#!/bin/bash
#
echo "starting SCR..."
sleep 1
x=$(($RANDOM % 2))
echo "exiting SCR: $x"
exit $x

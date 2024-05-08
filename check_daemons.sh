#!/usr/bin/env bash

set -e

for (( c=0; c<=3; c++ )); do
   # ssh compute-node-$c systemctl stop clientmount
   # ssh compute-node-$c systemctl daemon-reload
   # ssh compute-node-$c systemctl start clientmount
   ssh compute-node-$c systemctl status clientmount

   # ssh compute-node-$c systemctl stop nnf-dm
   # ssh compute-node-$c systemctl daemon-reload
   # ssh compute-node-$c systemctl start nnf-dm
   ssh compute-node-$c systemctl status nnf-dm
done

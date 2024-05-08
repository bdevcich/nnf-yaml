#!/bin/bash

flux submit -N1 --setattr=dw="#DW jobdw type=gfs2 capacity=10GiB name=flux-gfs2" hostname
flux submit -N1 --setattr=dw="#DW jobdw type=xfs capacity=10GiB name=flux-xfs" hostname
flux submit -N1 --setattr=dw="#DW jobdw type=raw capacity=10GiB name=flux-raw" hostname
flux submit -N1 --setattr=dw="#DW jobdw type=lustre capacity=10GiB name=flux-lusre" hostname
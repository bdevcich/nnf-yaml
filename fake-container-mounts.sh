#!/bin/bash

set -x
set -e

WF_NAME=blake-container
WF_NAMESPACE=default

echo "kind-worker2"
MNT=$(kubectl get clientmounts.dws.cray.hpe.com -n kind-worker2 default-blake-container-0-servers -oyaml | yq '.spec.mounts[0].mountPath')
docker exec -it kind-worker2 mkdir -p $MNT
MNT=$(kubectl get clientmounts.dws.cray.hpe.com -n kind-worker2 default-blake-container-1-servers -oyaml | yq '.spec.mounts[0].mountPath')
docker exec -it kind-worker2 mkdir -p $MNT

echo "kind-worker3"
MNT=$(kubectl get clientmounts.dws.cray.hpe.com -n kind-worker3 default-blake-container-0-servers -oyaml | yq '.spec.mounts[0].mountPath')
docker exec -it kind-worker3 mkdir -p $MNT
MNT=$(kubectl get clientmounts.dws.cray.hpe.com -n kind-worker3 default-blake-container-1-servers -oyaml | yq '.spec.mounts[0].mountPath')
docker exec -it kind-worker3 mkdir -p $MNT


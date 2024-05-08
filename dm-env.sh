#!/usr/bin/env bash

src=$(kubectl get workflow blake-gfs2 -oyaml | yq '.status.env.DW_JOB*')
# /mnt/nnf/34d5c01c-534d-4249-af5c-b1f233df37ce-0

dest=$(kubectl get workflow blake-global-lustre -oyaml | yq '.status.env.DW_JOB*')
# /mnt/nnf/8006ba28-f51f-426e-89fc-fe742c639556-0

echo "export NNF_SRC=${src}"
echo "export NNF_DEST=${dest}"

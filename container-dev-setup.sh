kubectl apply -f ~/src/rabbit/nnf-sos/config/samples/nnf_v1alpha1_nnfcontainerprofile.yaml

kubectl apply -f persistent-create.yaml
sleep 1
kubectl patch --type merge --patch-file=allocation-lustre.yaml servers blake-persistent
sleep 1
kubectl patch --type merge workflow blake-persistent --patch '{"spec": {"desiredState": "Setup"}}'
sleep 1

kubectl apply -f container.yaml
sleep 1
kubectl patch --type merge --patch-file=allocation-gfs2.yaml servers blake-container-0
kubectl patch --type merge --patch-file=allocation-computes.yaml computes blake-container
kubectl patch --type merge workflow blake-container --patch '{"spec": {"desiredState": "Setup"}}'
sleep 3
kubectl patch --type merge workflow blake-container --patch '{"spec": {"desiredState": "DataIn"}}'
kubectl patch --type merge workflow blake-container --patch '{"spec": {"desiredState": "PreRun"}}'

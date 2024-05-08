export KUBECONFIG=$HOME/.kube/config
for ctx in `find "$HOME/.kube/contexts" -type f`
do
  # concatenate the files into a list in KUBECONFIG
  export KUBECONFIG=$KUBECONFIG:$ctx
done
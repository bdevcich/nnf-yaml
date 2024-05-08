cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.28/rpm/repodata/repomd.xml.key
EOF

su - flux
mkdir ~/.kube/contexts

export KUBECONFIG=$HOME/.kube/config
for ctx in `find "$HOME/.kube/contexts" -type f`
do
  # concatenate the files into a list in KUBECONFIG
  export KUBECONFIG=$KUBECONFIG:$ctx
done


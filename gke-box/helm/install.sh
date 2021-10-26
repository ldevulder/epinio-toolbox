#!/bin/bash

figlet helm
curl --silent --location https://get.helm.sh/helm-v$1-linux-amd64.tar.gz | tar xz -C .
echo "NOTE: the following kubeconfig error is 'normal', as the kubernetes cluster is not configured yet!"
sudo mv linux-amd64/helm /usr/local/bin
sudo chown root:root /usr/local/bin/helm
sudo rm -rf linux-amd64/ helm-*.tar.gz
helm version

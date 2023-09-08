#!/bin/bash

kubectl create ns kubeflow-sc
kubectl create ns istio-system

kubectl create secret generic smbcreds --from-literal username="ubuntu" --from-literal password="test"
kubectl create secret generic smbcreds --from-literal username="ubuntu" --from-literal password="test" -n kubeflow-sc
kubectl create secret generic smbcreds --from-literal username="ubuntu" --from-literal password="test" -n istio-system

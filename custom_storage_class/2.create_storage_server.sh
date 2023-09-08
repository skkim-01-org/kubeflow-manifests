#!/bin/bash

kubectl apply -f 2.storage.yaml

kubectl patch storageclass sc-smb-kubeflow -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

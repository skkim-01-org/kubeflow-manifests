#!/bin/bash


helm install kubeflow-smb-driver csi-driver-smb/csi-driver-smb \
--version=v1.12.0 \
--namespace kubeflow-sc \
--set driver.name="kubeflow.smb.csi.k8s.io" \
--set controller.name="smb-controller-kf" \
--set rbac.name=smb-controller-kf \
--set serviceAccount.controller=smb-controller-kf-sa \
--set serviceAccount.node=smb-node-kf-sa \
--set node.name=smb-node-kf \
--set controller.metricsPort=38000 \
--set controller.livenessProbe.healthPort=38001 \
--set node.livenessProbe.healthPort=38002 \
--set username=ubuntu \
--set password=test \
--wait -v=5 --debug

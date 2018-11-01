#!bin/bash
######################################################### helm to deploy prometheus ######################### 
helm repo add coreos https://s3-eu-west-1.amazonaws.com/coreos-charts/stable/
helm install coreos/prometheus-operator --name prometheus-operator --namespace monitoring
helm install coreos/kube-prometheus --name kube-prometheus --set global.rbacEnable=true --namespace monitoring
kubectl get pods -n monitoring
kubectl get svc -n monitoring

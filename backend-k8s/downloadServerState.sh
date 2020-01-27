#!/bin/bash
kubectl get ns steward-system -oyaml > downloaded/100-namespace_steward-system.yaml
kubectl get crd pipelineruns.steward.sap.com -oyaml > downloaded/101-customResourceDefinition_PipelineRun.yaml
kubectl get crd tenants.steward.sap.com -oyaml > downloaded/101-customResourceDefinition_Tenant.yaml
kubectl get clusterrole steward-client -oyaml > downloaded/102-clusterRole_steward-client.yaml
kubectl get clusterrole steward-run -oyaml > downloaded/102-clusterRole_steward-run.yaml
kubectl get clusterrole steward-tenant -oyaml > downloaded/102-clusterRole_steward-tenant.yaml
kubectl -n steward-system get sa steward-system -oyaml > downloaded/200_serviceAccount_steward-system.yaml
kubectl get clusterrolebinding steward-system -oyaml > downloaded/201_clusterRoleBinding_steward-system.yaml
kubectl -n steward-system get deployment steward-run-controller -oyaml > downloaded/202_deployment_steward-run-controller.yaml
kubectl -n steward-system get deployment steward-tenant-controller -oyaml > downloaded/202_deployment_steward-tenant-controller.yaml
kubectl -n steward-system get service steward-run-metrics -oyaml > downloaded/203_service_steward-run-metrics.yaml
kubectl -n steward-system get service steward-tenant-metrics -oyaml > downloaded/203_service_steward-tenant-metrics.yaml
kubectl get clustertasks.tekton.dev steward-jenkinsfile-runner -oyaml > downloaded/300_clusterTask_steward-jenkinsfile-runner.yaml

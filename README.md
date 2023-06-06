# K8s-deployment-using-Helm-Charts


# First we need to switch to uat kubernetes context
```kubectl config use-context uat```

# Run below command to check the namespaces in UAT.

```kubectl get namespace```

```
## How is the Helm organized?

Helm is use to generate k8s artifact. All the services are configured as helm templates in `charts/templates`

Variables for each environment uat, test, prod is located in deploy/ folder

### How to use helm to deploy all  services?

```
```
helm template -f deploy/<environment>/values.yaml k8s/charts/ | kubectl apply -f -
```
```

### How to create new k8s artifacts?

New artificats can be created just by adding new files in `charts/templates`.

1. Deployment: charts/templates/test-deployment.yaml
2. Service: charts/templates/test-service.yaml
3. PVC: charts/templates/test-pvc.yaml
4. Ingress: charts/templates/ingress.yaml

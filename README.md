# K8s-deployment-using-Helm-Charts


# Switch to uat kubernetes context
kubectl config use-context uat

# Test
kubectl get namespace # you should be seeing all environments supported

```
## How is the Helm organized?

We use helm to generate k8s artifact. All the services are described as helm templates in `charts/templates`

Variables for each environment `uat`, `test`, `prod` is configured in `deploy/` folder

### How to use helm to deploy all  services?

```
helm template -f deploy/<environment>/-values k8s/charts/ | kubectl apply -f -
```

### How to create new k8s artifacts?

New artificats can be created just by adding new files in `charts/templates`. Please look at the examples provided by following files:

1. Deployment: `charts/templates/test-deployment.yaml`
2. Service: `charts/templates/test-service.yaml`
3. PVC: `charts/templates/test-pvc.yaml`
4. Ingress: `charts/templates/ingress.yaml`

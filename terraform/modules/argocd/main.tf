# provider "helm" {  //Enables Terraform to install Helm charts into Kubernetes
#   kubernetes {
#     config_path = "~/.kube/config" //uses local kubeconfig to connect to EKS cluster
#   }
# }

# resource "helm_release" "argocd" {   //install the ArgoCD Helm chart
#   name       = "argocd"
#   namespace  = "argocd"
#   repository = "https://argoproj.github.io/argo-helm"  //official argocd helm repo
#   chart      = "argo-cd"
#   version    = "5.51.6"

#   create_namespace = true

#   values = [
#     file("${path.module}/values.yaml")  //loads custom Helm values from a values.yaml file
#   ]
# }

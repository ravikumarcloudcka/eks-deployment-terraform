terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "/var/lib/jenkins/.kube/config"
  config_context = "arn:aws:eks:us-west-1:769187045176:cluster/zoominfo-assignment"
}

resource "kubernetes_deployment" "deployment1" {
  metadata {
    name = "service1"
    labels = {
      test = "service1"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "service1"
      }
    }

    template {
      metadata {
        labels = {
          test = "service1"
        }
      }

      spec {
        container {
          image = "769187045176.dkr.ecr.us-west-1.amazonaws.com/zi_service1:latest"
          name  = "zi-service1"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 8080
            }
            initial_delay_seconds = 20
            period_seconds        = 20
          }
        }
      }
    }
  }
}

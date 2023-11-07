resource "kubernetes_deployment" "deployment2" {
  metadata {
    name = "service2"
    labels = {
      test = "service2"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "service2"
      }
    }

    template {
      metadata {
        labels = {
          test = "service2"
        }
      }

      spec {
        container {
          image = ""
          name  = "zi-service2"

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
              port = 9090
            }
            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "service2" {
  metadata {
    name = "service2"
  }
  spec {
    selector = {
      app = "service2"
    }
    port {
      port        = 9090
      target_port = 9090
    }
    type = "NodePort"
  }
}

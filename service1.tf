resource "kubernetes_service" "service1" {
  metadata {
    name = "service1"
  }
  spec {
    selector = {
      app = "service1"
    }
    port {
      port        = 8080
      target_port = 8080
      protocol = TCP
      node_port = 31818
    }
    type = "NodePort"
  }
}

job "nginx" {
  datacenters = ["dc1"]
  type = "service"
  group "web" {
    count = 1
    network {
      port "www" {
        static = 80
        to = 80
      }
    }
    service {
      provider = "nomad"
      port     = "www"
    }
    task "nginx" {
      driver = "docker"

      config {
        image = "nginx:latest"
        ports = ["www"]
      }
      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}

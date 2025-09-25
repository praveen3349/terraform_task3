terraform {
  required_version = ">= 1.0.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"  # Windows named pipe
}

# Build Docker image locally from Dockerfile
resource "docker_image" "my_nginx" {
  name = "mynginx:latest"

  build {
    context    = "${path.module}"  # current directory
    dockerfile = "${path.module}/Dockerfile"
  }
}

# Run a container from the local image
resource "docker_container" "my_nginx" {
  name  = "terraform-local-nginx"
  image = docker_image.my_nginx.image_id

  ports {
    internal = 80
    external = 8081   # exposed on localhost:8081
  }
}

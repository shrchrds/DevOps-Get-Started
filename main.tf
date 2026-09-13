terraform {
  required_providers {
    docker={
        source = "kreuzwerker/docker"
    }
  }
  required_version = ">=1.5.0"
}

provider "docker" {}

resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

resource "docker_container" "nginx_container" {
  name = var.container_name
  image = docker_image.nginx_image.image_id

  ports {
    internal = 80
    external = var.environment
  }
}
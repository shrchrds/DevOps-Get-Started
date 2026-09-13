output "containername" {
    description = "Created Docker container name"
    value = docker_container.nginx_container.name
  
}

output "application_url" {
  description = "local nginx URL"
  value = "http://localhost:${var.external_port}"
}
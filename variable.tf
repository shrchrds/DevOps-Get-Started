variable "container_name" {
    description = "name of docker container"
    type = string

    default = "terraform-nginx"
}

variable "external_port" {
  description = "port number of running process"
  type = number
  default = 8080
}

variable "environment" {
  description = "Deploymnet Environment"
    type = string
    validation {
      condition = contains(
        ["dev", "test", "prod"],
        var.environment
      )
      error_message = "Environment must be dev, test or prod"
    }
}

variable "Database_password" {
  description = "database pass"
  type =string
  sensitive = true
}
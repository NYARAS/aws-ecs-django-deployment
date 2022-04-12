variable "prefix" {
  default = "raad"
}

variable "project" {
  default = "recipe-app-api-devops"
}

variable "contact" {
  default = "email@calvineotieno.com"
}

variable "db_username" {
  description = "username for the RDS postgres instance"
}

variable "db_password" {
  description = "Password for the RDS postgres instance"
}

variable "bastion_key_name" {
  default = "recipe-app-api-devops-bastion"
}

variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "167259143853.dkr.ecr.eu-west-1.amazonaws.com/recipe-app-api-devops:latest"
}

variable "ecr_image_proxy" {
  description = "ECR image for Proxy"
  default     = "167259143853.dkr.ecr.eu-west-1.amazonaws.com/recipe-app-api-proxy:latest"
}

variable "django_secret_key" {
  description = "Secret key for Django app"
}

variable "dns_zone_name" {
  description = "Domain Name"
  default     = "calvineotieno.com"
}

variable "subdomain" {
  description = "Subdomain per environment"
  type        = map(string)
  default = {
    production = "api"
    staging    = "api.staging"
    dev        = "api.dev"
  }
}

variable "endpoint" {
  description = "Endpoint url"
  type        = string
  default     = "staging.calvineotieno.com"
}

variable "domain_name" {
  description = "Domain name"
  type        = string
  default     = "calvineotieno.com"
}
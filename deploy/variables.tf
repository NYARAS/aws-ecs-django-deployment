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

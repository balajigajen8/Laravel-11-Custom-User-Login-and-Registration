variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "db_name" {
  default = "laravel"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "password123"
}

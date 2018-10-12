variable "region" {
  type = "string"
  default = "us-east-1"
}

variable "instance_type" {
  type = "string"
  default = "t2.micro"
}

variable "ami" {
  type = "string"
  default = "ami-c0f0c0bf"
}

variable "name" {
  type = "string"
  default = "prometheus-server"
}
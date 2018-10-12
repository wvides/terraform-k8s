provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "prometheus-server" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  tags {
    Name = "${var.name}"
  }
}
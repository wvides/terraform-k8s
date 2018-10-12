output "instance_id" {
  value = "${aws_instance.prometheus-server.id}"
}

output "public_ip" {
  value = "${aws_instance.prometheus-server.public_ip}"
}

output "ami_id" {
  value = "${aws_instance.prometheus-server.ami}"
}

output "instance_type" {
  value = "${aws_instance.prometheus-server.instance_type}"
}

output "vpc_security_group_ids" {
  value = "${aws_instance.prometheus-server.vpc_security_group_ids}"
}
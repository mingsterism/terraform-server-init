# output "instance_security_group" {
#   value = "${aws_security_group.instance_sg.id}"
# }

# output "launch_configuration" {
#   value = "${aws_launch_configuration.app.id}"
# }

# output "asg_name" {
#   value = "${aws_autoscaling_group.app.id}"
# }

# output "elb_hostname" {
#   value = "${aws_alb.main.dns_name}"
# }

# output "ip_address" {
#   value = "${aws_eip.ip.public_ip}"
# }

output "instance_ips" {
  value = ["${aws_instance.instance1.public_ip}"]
}

provider "aws" {
  region = "ap-southeast-1"
  profile = "default"
}

resource "aws_instance" "instance1" {
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = "${file(var.private_key_path)}"
  }

  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
	security_groups = "${var.security_group}"
	key_name = "${var.key_name}"
	tags {
		"Name" = "${var.instance_name}"
	}
}

resource "aws_key_pair" "key001" {
  key_name = "key001"
	public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTQSN4jYKdPc3pEGnPdUMgNrFSgq29REv71/8StF9wcXYnQbGw4RmWzUs9RSCCt4vQoorfQ9kPw1Gqf1q5nh5yyFEYfwbio1Ykcbb1TH1J121714jG2UgnjWpWwLw91RdORt5wa7NgUae4QXlmQ819KZ79NI87AOpfVfQssIFvV+I1tRzzn5Vd6Hnzf3Il0LPrpWk2zdpOakdEJogSF5/3rpEa3GwY492Xi4ZeKLaVlIBsKvonP1k5in3kEcieOPF0mL7VPDNpeMBJYA+Ajeq4wkG3BAs1wFNWcRcm6HlsXW3pJka3x2+3AT5bLgVkBWvM0xLK4F92wVd5MjO9GB2V mingk@DESKTOP-GGEI9QS"
}


resource "aws_instance" "app-1" {
  ami           = "${var.ami_amazon}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.subnet-1.id}"
  associate_public_ip_address = 1
  key_name = "${var.key}"
  vpc_security_group_ids = ["${data.aws_security_group.linux-ssh.id}"]

  tags = {
    Name = "app-1"
  }
}
output "private_ip" {
  value = ["${aws_instance.app-1.*.private_ip}"]
}

output "public_ip" {
  value = ["${aws_instance.app-1.*.public_ip}"]
}

resource "aws_instance" "web-node" {
  ami = "ami-b8134dcb"
  instance_type = "t2.micro"
  key_name = "terraform-test"
  security_groups = ["${aws_security_group.web-node.name}"]
}
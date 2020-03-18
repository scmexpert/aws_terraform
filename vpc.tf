resource "aws_vpc" "ansible_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "ansible-vpc"
  }
}
resource "aws_subnet" "ansible-subnet" {
  vpc_id     = aws_vpc.ansible_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "ansible-subnet"
  }
}

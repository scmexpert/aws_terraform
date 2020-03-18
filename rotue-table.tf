resource "aws_route_table" "ansible_rt" {
  vpc_id = aws_vpc.ansible_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "ansible-rt"
  }
}

resource "aws_main_route_table_association" "a" {
  vpc_id         = aws_vpc.ansible_vpc.id
  route_table_id = aws_route_table.ansible_rt.id
}

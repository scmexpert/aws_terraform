resource "aws_instance" "ansible-vm" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  associate_public_ip_address = true
  subnet_id = aws_subnet.ansible-subnet.id
  vpc_security_group_ids  = [aws_security_group.ansible_sg.id]
  dynamic "root_block_device" {
    for_each = var.root_block_device
    content {
      delete_on_termination = lookup(root_block_device.value, "delete_on_termination", null)
      volume_size           = lookup(root_block_device.value, "size", null)
      volume_type           = lookup(root_block_device.value, "type", null)
    }
  }
  tags = {
    Name = "anisble-test-vm"
  }
}


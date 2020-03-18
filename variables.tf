variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-0b67b725f53e75798"
}

variable "key_name" {
  description = "EC2 instance key name"
  type        = string
  default     = "vishwa-aws"
}

variable "root_block_device" {
  description = "Customize details about the root block device of the instance. See Block Devices below for details"
  type        = list(map(string))
  default     = [{size = 30 , type = "gp2", delete_on_termination = "true"}]
}

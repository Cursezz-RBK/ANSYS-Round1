variable "aws_region" {
  type = string
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "instance_ami" {
  type = string
  description = "AMI ID to use for the EC2 instance"
}
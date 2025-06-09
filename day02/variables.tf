variable "instance_type" {
    description = "This is a variable for ec2 instance type"
    type = string
    default = "t2.micro"
}

variable "instance_count" {
    description = "Variable defined for count of instances"
    type = number
    default = 1
  
}

variable "aws_region" {
    description = "Variable to assign a region."
    type = string
    default = "us-east-1"
}

variable "instance_size" {
    description = "Variable for defining instance size"
    type = number
    default = 8
}

variable "instance_volume_type" {
    description = "Variable for defining instance volume type"
    type = string
    default = "gp3"
}

variable "name" {
  description = "content of file"
  default = "This is new content for a local file"
}

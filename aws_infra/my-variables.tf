variable "my-env"{
    description = "The environment for which the infrastructure is being provisioned (e.g., dev, staging, prod)"
    type        = string    
}

variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type to use for the EC2 instance"
}

variable "instance_count" {
  type        = number
  description = "The number of EC2 instances to create"
}




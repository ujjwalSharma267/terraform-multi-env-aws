# This file defines the variables used in the DynamoDB table configuration.
variable "dynamodb_table_name" {
    description = "The name of the DynamoDB table"
    type        = string
    default     = "The-DynamoDB-table"
}

variable "ami_id" {
  type        = string
  default     = "ami-019715e0d74f695be"
  description = "The AMI ID for the EC2 instance (Example: Ubuntu AMI ID for ap-south-1 region)"
}

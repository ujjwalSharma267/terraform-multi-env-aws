  resource "aws_instance" "my-ec2" {
    count = var.instance_count  #Using the variable defined in variable.tf to set the number of EC2 instances to create
    ami           = var.ami_id  #Using the variable defined in variable.tf to set the AMI ID for the EC2 instance
    instance_type = var.instance_type                                #instance type
    tags = {
      Name = "${var.my-env}-my-multi-env-aws-infra-instance"
    }
  }
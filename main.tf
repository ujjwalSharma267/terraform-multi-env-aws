module "dev-app"{
    source = "./aws_infra"
    my-env = "dev"
    instance_type = "t2.micro"        #instance type
    ami_id = "ami-019715e0d74f695be"  #The AMI ID for the EC2 instance (Example: Ubuntu AMI ID for ap-south-1 region)
    instance_count = 1


}


module "stg-app"{
    source = "./aws_infra"
    my-env = "stg"
    instance_type = "t2.medium"         #instance type
    ami_id = "ami-019715e0d74f695be"  #The AMI ID for the EC2 instance (Example: Ubuntu AMI ID for ap-south-1 region)
    instance_count = 2


}

module "prd-app"{
    source = "./aws_infra"
    my-env = "prd"
    instance_type = "t2.medium"      #instance type
    ami_id = "ami-019715e0d74f695be"  #The AMI ID for the EC2 instance (Example: Ubuntu AMI ID for ap-south-1 region)
    instance_count = 3
}
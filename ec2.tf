#Key pair resource to create an AWS key pair
resource "aws_key_pair" "deployer" {
  key_name   = "aws-terra-key"
  public_key = file("${path.module}/terra-key.pub")  #Path to the public key file using pathmodule which gives the current module path
}

#default vpc 

resource "aws_default_vpc" "default" {

}

#security group resource to create a security group
resource "aws_security_group" "my-security" {
  name        = "allow_ports"                               #name of the security group
  description = "this SG is to open port for EC2 instances" #description of the security group
  vpc_id      = aws_default_vpc.default.id                    #interpolating the default VPC ID

  ingress {
    description = "this is for ssh access"
    from_port   = 22                #port number
    to_port     = 22                #port number
    protocol    = "tcp"             #protocol type
    cidr_blocks = ["0.0.0.0/0"]     #to allow from any IP address
  }

  egress {
    description = "allow all outbound traffic"   #allowing outbound traffic
    from_port   = 0                          #port number
    to_port     = 0                         #port number
    protocol    = "-1"                     #all protocols
    cidr_blocks = ["0.0.0.0/0"]           #to allow to any IP address
  }
}


  resource "aws_instance" "my-ec2" {
    ami           = var.ami_id  #Using the variable defined in variable.tf to set the AMI ID for the EC2 instance
    instance_type = "t2.micro"                                  #instance type
    key_name      = aws_key_pair.deployer.key_name              #using the key pair created above
    security_groups = [aws_security_group.my-security.name]     #associating the security group created above

    tags = {
      Name = "MyFirstAutoEC2Instance"
    }
  }
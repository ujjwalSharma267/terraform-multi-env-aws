#resource block to create an S3 bucket
resource "aws_s3_bucket" "my-bucket" {
    #argument to specify the name of the bucket
  bucket = "${var.my-env}-my-multi-env-aws-infra-bucket"
  tags = {
    name = "${var.my-env}-my-multi-env-aws-infra-bucket"
    environment = var.my-env
  }
}
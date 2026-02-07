#resource block to create an S3 bucket
resource "aws_s3_bucket" "my-bucket" {
    #argument to specify the name of the bucket
  bucket = "my-multi-env-aws-infra-bucket"
  tags = {
    name = "my-multi-env-aws-infra-bucket"
  }
}
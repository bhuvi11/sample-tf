# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "b1" {
  bucket = "binarylook-b1"
  //acl    = "private"

  tags = {
    Name        = "Private_2_Bucket"
  }
}

resource "aws_s3_bucket" "b2" {
  bucket = "binarylook-b2"
  acl    = "public-read-write"

  tags = {
    Name        = "Public_2_Bucket"
  }
}

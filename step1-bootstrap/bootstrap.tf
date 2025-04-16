provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bootstrap_state_bucket" {
  bucket = "nextwork-unique-bucket-bheem-8"
  tags = {
    Name        = "State Bucket"
    Environment = "Bootstrap"
  }
}

terraform {
  backend "s3" {
    bucket         = "nextwork-unique-bucket-bheem-8"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_object" "image" {
  bucket = "nextwork-unique-bucket-bheem-8"
  key    = "image.png"
  source = "image.png" # Make sure this file exists or use any dummy file
}

resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
  bucket = "nextwork-unique-bucket-bheem-8"
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

# Setup backend using AWS S3 (Remote State File) and DynamoDB (lock)
terraform {
  backend "s3" {
    bucket         = "nehas-bucket-tf"
    key            = "dev/static-website"
    region         = "ap-south-1"
    dynamodb_table = "tf-demo"
  }
}
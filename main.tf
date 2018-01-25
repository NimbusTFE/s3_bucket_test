provider "aws" {
  region = "us-east-1"
}

data "aws_s3_bucket" "selected" {
  bucket = "tfe-roger-ptfe-data"
}

output "website_endpoint" {
  value = "${data.aws_s3_bucket.selected.website_endpoint}"
}

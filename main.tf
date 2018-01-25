provider "aws" {
  region = "us-east-1"
}

data "aws_s3_bucket" "selected" {
  bucket = "tfe-roger-ptfe-data"
}

output "arn" {
  value = "${data.aws_s3_bucket.selected.arn}"
}

output "domain_name" {
  value = "${data.aws_s3_bucket.selected.bucket_domain_name}"
}

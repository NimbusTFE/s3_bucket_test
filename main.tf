provider "aws" {
  region = "us-east-1"
}

data "aws_s3_bucket" "selected" {
  bucket = "tfe-roger-ptfe-data"
}

resource "aws_s3_bucket_object" "example" {
  key                    = "myname"
  bucket                 = "${data.aws_s3_bucket.selected.id}"
  content                = "Roger"
}

output "arn" {
  value = "${data.aws_s3_bucket.selected.arn}"
}

output "domain_name" {
  value = "${data.aws_s3_bucket.selected.bucket_domain_name}"
}

output "object_id" {
  value = "${aws_s3_bucket_object.example.id}"
}

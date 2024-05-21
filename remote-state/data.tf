data "aws_s3_bucket" "existing_bucket" {
  bucket = "sri76s-aws"
}

output "s3" {
  value = data.aws_s3_bucket.existing_bucket.id
}

data "aws_ami_ids" "centos8" {
  owners = ["973714476881"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }
}
output "ami-ids" {
  value = data.aws_ami_ids.centos8.id
}
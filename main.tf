provider "aws" {
  region = "us-east-1"
}

module "peter_corp_infra" {
  source  = "trial29v6i5.jfrog.io/aws-t-local-module__peter-corp/peter-corp-infra/aws"
  version = "1.0.0"

  name_prefix            = "peter-corp"
  bucket_name            = "replace-with-a-globally-unique-name"
  ami_id                 = "ami-0123456789abcdef0"
  subnet_id              = "subnet-0123456789abcdef0"
  vpc_security_group_ids = ["sg-0123456789abcdef0"]

  tags = {
    Project = "terraform-testing"
  }
}

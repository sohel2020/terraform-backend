// needs to create `some-bucket-name-898797` (enable versioning) and dynomodb table `terraform-lock` (make primary key `LockID`)

terraform {
  backend "s3" {
    bucket         = "some-bucket-name-898797"
    key            = "shared/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
    profile        = "infra-pipeline"
  }
}

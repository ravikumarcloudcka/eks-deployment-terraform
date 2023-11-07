terraform {
  backend "s3" {
    bucket = "zi-tf-statelock"
    key    = "terraform.tfstate"
    region = "us-west-1"
    dynamodb_table = "state-locking"
  }
}

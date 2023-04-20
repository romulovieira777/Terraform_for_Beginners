terraform {
    backend "s3" {
        bucket = "terraform-files-course"
        key = "terraform/tfstate.tfstate"
        region = "us-east-1"
        access_key = "value"
        secret_key = "value"
    }
}

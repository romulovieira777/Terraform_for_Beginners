provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

resource "aws_instance" "EC2" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
}
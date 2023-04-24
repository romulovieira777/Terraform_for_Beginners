provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "DB" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    count = 3  
}

resource "aws_s3_bucket" "terraform_state" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16" 
}

resource "aws_vpc" "mysecondvpc" {
    cidr_block = "10.10.10..0/24"
  
}

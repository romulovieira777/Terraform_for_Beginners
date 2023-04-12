provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

# Create a new EC2 instance
resource "aws_insta" "myEC2" {
    ami = ""
    instance_type = "t2.micro"
}

output "InsideModule" {
    value = aws_instance.myEC2.id
}

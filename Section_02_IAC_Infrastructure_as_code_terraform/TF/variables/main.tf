provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""  
}

variable "mystringvar" {
    type = string
    default = "my-first-vpc"
}

variable "mynumvar" {
    type = number
    default = 100
}

variable "myboolvar" {
    default = false
}

variable "mylistvar" {
    type = list(string)
    default = ["one", "two", "three"]
}

variable "mymapvar" {
    type = map
    default = {
        "key1" = "value1"
        "key2" = "value2"
    }
}

variable "myinputvat" {
    type = string
    description = "plz enter a vpc name"
}

variable "mytuplevar" {
    type = tuple([string, number, string])
    default = ["var1", 10, "var2"]
}

variable "myobjectvar" {
    type = object({
        name = string,
        port = list(number)
    })
    default = {
        name = "myports"
        port = [22, 80, 443]
    }  
}
resource "aws_vpc" "myVPC" {
    cidr_block = "10.10.10.0/24"

    tags = {
        Name = var.mylistvar[0]
    }
}

output "myoutput" {
    value = aws_vpc.myVPC.id
}

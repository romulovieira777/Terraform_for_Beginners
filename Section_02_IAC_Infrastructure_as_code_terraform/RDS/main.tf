provider "aws" {
  region = "us-east-1"
  access_key = ""
    secret_key = ""
}

resource "aws_db_instance" "myRDS" {
    allocated_storage       = 20
    storage_type            = "gp2"
    engine                  = "mysql"
    engine_version          = "5.7"
    instance_class          = "db.t2.micro"
    name                    = "mydb"
    username                = "myuser"
    password                = "mypassword"
    parameter_group_name    = "default.mysql5.7"
    skip_final_snapshot     = true
    port                    = 3306
}

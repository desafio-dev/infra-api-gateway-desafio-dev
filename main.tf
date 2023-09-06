terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}

provider "aws" {
  access_key = "AKIA2L5KVXKHAAVTUWXH"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_db_instance" "rds-banking" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "salomao"
  password             = "iO9ZCI9z"
  parameter_group_name = "default.mysql5.7"
}
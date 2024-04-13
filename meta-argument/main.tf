terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.61.0"

    }
  }
}
provider "aws" {
    
    region = "us-east-1"
  
}
/*
resource "aws_iam_group" "grp1" {
    name = "manager24"
    lifecycle {
      prevent_destroy = true
    }
  
}

resource "aws_iam_user" "usr1" {
    name = "kevin2024"
    depends_on = [ aws_iam_group.grp1 ]
  
}
*/

resource "aws_instance" "server1" {
    ami = "ami-0a699202e5027c10d"
    instance_type = "t2.small"
    key_name = "wordpress"
    lifecycle {
      create_before_destroy = true
    }

}
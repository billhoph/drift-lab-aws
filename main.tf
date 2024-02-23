terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}

resource "aws_instance" "tf_demo_vm" {
  ami           = "ami-008fe2fc65df48dac"
  instance_type = "t2.micro"

  tags = {
    Name      = "tfDemoVM01"
    yor_name  = "tf_demo_vm"
  }
}


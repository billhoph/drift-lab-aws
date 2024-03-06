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
    manual_tag = 21022024
    Name = "tfDemoVM01_editted"
    Name      = "tfDemoVM01"
    yor_name  = "tf_demo_vm"
    yor_trace = "9b23f0df-eab2-47ec-8eea-4dfe53268cd4"
  }
}


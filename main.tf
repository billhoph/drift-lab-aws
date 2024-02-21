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
  region  = "ap-southeast-1"
  profile = "default"
}

resource "aws_instance" "tf_demo_vm" {
  ami           = "ami-07a6e3b1c102cdba8"
  instance_type = "t2.micro"

  tags = {
    Name      = "tfDemoVM01"
    yor_name  = "tf_demo_vm"
    yor_trace = "0ff69fe9-9823-46ee-a1ad-be11a8095c47"
  }
}

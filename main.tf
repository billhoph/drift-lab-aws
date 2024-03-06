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
    3rd_Drift = "Created"
    Name      = "tfDemoVM01"
    yor_name  = "tf_demo_vm"
    yor_trace = "9b23f0df-eab2-47ec-8eea-4dfe53268cd4"
  }
  availability_zone = "us-west-2b"
  metadata_options = {"http_endpoint": "enabled", "http_tokens": "optional"}
  monitoring = false
  private_ip = "172.31.16.108"
  root_block_device = {"delete_on_termination": true, "encrypted": false, "iops": "100", "volume_size": "8", "volume_type": "gp2"}
  security_groups = ["default"]
  subnet_id = "subnet-105b0069"
}



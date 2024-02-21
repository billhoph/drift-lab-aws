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
    manual_tag = 21022024
    Name = "tfDemoVM01_editted"
    Name      = "tfDemoVM01"
    yor_name  = "tf_demo_vm"
    yor_trace = "0ff69fe9-9823-46ee-a1ad-be11a8095c47"
  }
  associate_public_ip_address = true
  availability_zone = "ap-southeast-1b"
  metadata_options = {"http_endpoint": "enabled", "http_put_response_hop_limit": "2", "http_tokens": "required"}
  monitoring = false
  private_ip = "172.31.20.192"
  root_block_device = {"delete_on_termination": true, "encrypted": false, "iops": "3000", "volume_size": "8", "volume_type": "gp3"}
  security_groups = ["default"]
  subnet_id = "subnet-0f4f2002e0c52be9c"
  vpc_security_group_ids = ["sg-07613ed1bd94fbb1e"]
}


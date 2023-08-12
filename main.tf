terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
  # Configuration options
  #access_key = "AKIAX7QASMDTO5V6TQMG"
  #secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "NitishEC2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Nitish_EC2"
  }
}

variable "ami" {
    default = "ami-0f34c5ae932e6f0e4"
}

variable "instance_type" {
default = "t2.micro"

}
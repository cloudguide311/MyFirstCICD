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
   AWS_ACCESS_KEY_ID="AKIA37RGXBEGO3U5VS5W
   AWS_SECRET_ACCESS_KEY="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
   AWS_REGION="us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0283a57753b18025b"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

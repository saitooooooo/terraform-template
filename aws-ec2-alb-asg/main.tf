# Terraformのバージョン固定
terraform {
  required_version = "= 1.1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket  = "training-dev-tfstate"
    region  = "ap-northeast-1"
    profile = "terraformer"
    key     = "ec2-alb-asg/terraform.tfstate"
    encrypt = true
  }
}

# プロバイダーの設定
provider "aws" {
  profile = "terraformer"
  region  = "ap-northeast-1"
  default_tags {
    tags = local.default_tags
  }
}

# ALB用
provider "aws" {
  region = "us-east-1"
  alias  = "virginia"
  default_tags {
    tags = local.default_tags
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.7.2"
    }
  }
  backend "s3" {
    bucket          = "atlantis-ha-poc-backend"
    key             = "test-atlantis-1746531411-1.tfstate"
    region          = "us-east-1"
    encrypt         = true
    dynamodb_table  = "atlantis_ha_poc_lockid"
  }
}

resource "time_sleep" "wait_10_seconds" {
  create_duration = "10s"
}

resource "aws_s3_bucket" "test_atlantis" {
  bucket = "test-atlantis-1746531411-1"

  tags = {
    Name        = "test-atlantis-1746531411-1"
    Environment = "Test"
  }

  depends_on = [time_sleep.wait_10_seconds]
}
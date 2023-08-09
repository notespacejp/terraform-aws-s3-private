terraform {
    required_version = ">= 1.0.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 4.39.0"
        }
    }
}

resource "aws_s3_bucket" "this" {
    bucket = var.name
    bucket_prefix = var.prefix
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
    bucket = aws_s3_bucket.this.bucket
    rule {
        bucket_key_enabled = var.kms_arn != null
        dynamic apply_server_side_encryption_by_default {
            for_each = var.kms_arn == null ? [true] : []
            content {
                sse_algorithm = "AES256"
            }
        }
        dynamic apply_server_side_encryption_by_default {
            for_each = var.kms_arn == null ? [] : [true]
            content {
                kms_master_key_id = var.kms_arn
                sse_algorithm = "aws:kms"
            }
        }
    }
}

resource "aws_s3_bucket_versioning" "this" {
    bucket = aws_s3_bucket.this.bucket
    versioning_configuration {
        status = "Enabled"
    }
}
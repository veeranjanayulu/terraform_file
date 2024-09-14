provider "aws" {
  region = "ca-central-1"
  alias  = "centeral"
}

provider "aws" {
  region = "ap-south-1"
  alias  = "south"
}

resource "aws_s3_bucket" "primrly" {
  bucket = "aws-deveopsss-aws"
  provider = aws.centeral
}

resource "aws_s3_bucket_versioning" "primrly" {
  bucket = aws_s3_bucket.primrly.id
  versioning_configuration {
    status = "Enabled"
  }
  provider = aws.centeral
}

resource "aws_s3_bucket" "secondary" {
  bucket = "deveops-deveopsss"
  provider = aws.south
}

resource "aws_s3_bucket_versioning" "secondary" {
  bucket = aws_s3_bucket.secondary.id
  versioning_configuration {
    status = "Enabled"
  }
  provider = aws.south
}

resource "aws_iam_role" "s3_policy" {
  name = "s3_roles"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "s3.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "s3_full_access_policy" {
  name        = "s3-full-access"
  description = "Policy with full access to S3"
  policy      = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "s3:*",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = aws_iam_role.s3_policy.name
  policy_arn = aws_iam_policy.s3_full_access_policy.arn
}

resource "aws_s3_bucket_replication_configuration" "replication" {
  bucket = aws_s3_bucket.primrly.bucket
  role   = aws_iam_role.s3_policy.arn

  rule {
    id     = "replication-rule"
    status = "Enabled"

    filter {
      prefix = ""  # Replicate all objects
    }

    destination {
      bucket        = aws_s3_bucket.secondary.arn
      storage_class = "STANDARD"  # Storage class of replicated objects
    }
     delete_marker_replication {
      status = "Enabled"  # Change to "Enabled" if you want delete markers to be replicated
    }
  }
}

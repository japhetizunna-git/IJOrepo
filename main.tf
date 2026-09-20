resource "aws_instance" "web_server" {
  ami           = "ami-0b6d9d3d33ba97d99" # Ubuntu 20.04 LTS (replace with your AMI)
  instance_type = "t3.micro"
  key_name      = "newkey"
  tags = {
    Name = "HelloWorldFizu"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
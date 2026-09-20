variable "bucket_name" {
  type = string
}
variable "environment" {
  type    = string
  default = "dev"
}
variable "aws_profile" {
  type    = string
  default = "default"
}
variable "aws_region" {
  type    = string
  default = "us-east-1"
}
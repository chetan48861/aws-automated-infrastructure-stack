resource "aws_s3_bucket" "my-bucket" {
  # Change the name slightly to bypass any global DNS lag
  bucket = "chetan-devops-virginia-2026-v3" 
}
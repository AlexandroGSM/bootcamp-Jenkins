# Bucket S3
resource "aws_s3_bucket" "bucket" {
  bucket = "desafio13-bucket-asurraco"
  tags = {
    Name  = "Desafio13-S3"
    Owner = "Alexandro Surraco"
  }
}

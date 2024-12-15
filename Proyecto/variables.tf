variable "AWS_ACCESS_KEY_ID" {
  description = "Access Key for AWS"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Secret Access Key for AWS"
  type        = string
  sensitive   = true
}

variable "AWS_DEFAULT_REGION" {
  description = "AWS Default Region"
  type        = string
  default     = "us-east-1"
}

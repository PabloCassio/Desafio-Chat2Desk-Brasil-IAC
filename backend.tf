terraform {
    backend "s3" {
        bucket         = var.bucket_name
        key            = "terraform.tfstate"
        region         = var.bucket_region
        endpoint       = var.bucket_endpoint
        access_key     = var.bucket_access_key
        secret_key     = var.bucket_secret_key
        skip_credentials_validation = true
        skip_get_ec2_platforms = true
  }
}

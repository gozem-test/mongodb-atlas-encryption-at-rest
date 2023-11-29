# Create MongoDB Atlas Encryption at Rest
resource "mongodbatlas_encryption_at_rest" "encrypt" {
  project_id = var.atlas_project_id

  aws_kms_config {
    enabled                = var.aws_kms_config.enabled
    customer_master_key_id = var.aws_kms_config.customer_master_key_id
    region                 = var.aws_kms_config.region
    role_id                = var.aws_kms_config.role_id
  }
}

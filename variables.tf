variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "MONGODB_ATLAS_PUBLIC_KEY" {
  type = string
}

variable "MONGODB_ATLAS_PRIVATE_KEY" {
  type = string
}

variable "atlas_project_id" {
  type        = string
  description = "(Required) The unique ID for the project to create the database user."
}

variable "aws_kms_config" {
  type = object({
    enabled                = optional(bool, true)
    customer_master_key_id = string
    region                 = optional(string, "US_EAST_1")
    role_id                = optional(string)
  })
}

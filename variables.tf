variable "is_enabled" {
  description = "Define is enabled or not"
  default     = "true"
}

variable "default_description" {
  description = "If you dont set description."
  type        = "string"
  default     = "KMS key created by terraform"
}

variable "description" {
  description = "(Optional) The description of the key as viewed in AWS console"
  default = ""
}

variable "deletion_window_in_days" {
  description = "(Optional) Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days. "
  default     = 30
}

variable "enable_key_rotation" {
  description = "(Optional) Specifies whether key rotation is enabled. Defaults to false"
  default     = false
}

variable "key_organization" {
  description = "(Optional) Define which organization would use this resource"
  default = ""
}

variable "key_tier" {
  description = "(Required) Definie which environment would use this resource, example: production"
}

variable "key_region" {
  description = "(Optional) Define name region would use this resource"
  default = ""
}

variable "key_name" {
  description = "(Required) Define name key and alias"
}

variable "tags" {
  description = ""
  type = "map"
  default = {}
}
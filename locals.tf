locals {
  alias_name = "${var.key_organization}-${var.key_name}-${var.key_region}-${var.key_tier}"

  common_tags = {
    Terraform    = "true"
    Organization = "${var.key_organization}"
    Tier         = "${var.key_tier}"
    Region       = "${var.key_region}"
  }
}

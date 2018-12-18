resource "aws_kms_key" "this" {
  is_enabled              = "${var.is_enabled}"
  description             = "${var.description == "" ? var.default_description : var.description}"
  deletion_window_in_days = "${var.deletion_window_in_days}"
  enable_key_rotation     = "${var.enable_key_rotation}"

  tags = "${merge(var.tags, local.common_tags, map("Name", local.alias_name))}"
}

resource "aws_kms_alias" "this" {
  name = "alias/${local.alias_name}"
  target_key_id = "${aws_kms_key.this.id}"
}

output "kms_key_id" {
  value = "${aws_kms_key.this.id}"
}

output "kms_key_arn" {
  value = "${aws_kms_key.this.arn}"
}

output "map_name_key_id" {
  value = "${zipmap(element(aws_kms_alias.this.*.name, 0) ,element(aws_kms_key.this.*.id, 0) )}"
}

output "map_name_key_arn" {
  value = "${zipmap(element(aws_kms_alias.this.*.name, 0) ,element(aws_kms_key.this.*.arn, 0) )}"
}

output "alias_name" {
  value = "${aws_kms_alias.this.name}"
}

output "alias_taget_key_id" {
  value = "${aws_kms_alias.this.target_key_id}"
}

output "alias_target_key_arn" {
  value = "${aws_kms_alias.this.target_key_arn}"
}

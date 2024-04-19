locals {
  name_prefix = "${var.env}-${var.component}"
  # Tags
  tags = merge(var.tags, {tf-module-name = "app"}, { env = var.env })
}
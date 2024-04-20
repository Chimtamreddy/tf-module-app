locals {
  name_prefix = "${var.env}-${var.component}"
  # Tags
  tags = merge(var.tags, {tf-module-name = "app"}, { env = var.env })
  parameters = concat(var.parameters, [var.component])
  policy_resources = [for i in local.parameters: "arn:aws:ssm:us-east-1:731817662313:parameter/${i}.${var.env}.*"]
}
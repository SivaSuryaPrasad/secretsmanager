provider "aws" {
    access_key = "AKIASI2H7L3YUMTDLNMS"
    secret_key = "EXehYHdxwm3/6IxXDifSWgL8GZeBHPVYfL+x9lwT"
    region = "us-east-1"
}
# resource "aws_secretsmanager_secret" "kavitha" {
#   name = "example1"
# }

resource "aws_secretsmanager_secret" "secretab" {
  kms_key_id = var.kms_key_id
  name       = var.name
  policy     = var.policy
  tags       = var.tags
}

resource "aws_secretsmanager_secret_version" "secretab" {
  secret_id     = aws_secretsmanager_secret.secretab.id
  secret_string = jsonencode(var.value)
  version_stages = "AWSCURRENT"
}

output "secret1"{
    value= "arn:aws:secretsmanager:us-east-1:156380389105:secret:kavitha4-fY4t3h"
}

output "example" {
  value = jsondecode(aws_secretsmanager_secret_version.secretab.secret_string)["user1"]
}
output "example2" {
  value = jsondecode(aws_secretsmanager_secret_version.secretab.secret_string)["user2"]
}

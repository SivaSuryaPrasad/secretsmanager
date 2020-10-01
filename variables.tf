variable "description" {
  default = "terraform-managed secret"
  type    = string
}

variable "kms_key_id" {
  default     = null
  description = "Optional. The KMS Key ID to encrypt the secret. KMS key arn or alias can be used."
}

variable "policy" {
  default     = null
  description = "Optional. The resource policy which controls access to the secret."
}

variable "name" {
  description = "Name of secret to store"
  type        = string
  default     = "kavitha7"
}

variable "tags" {
  default     = {}
  description = "User-Defined tags"
  type        = map(string)
}

variable "value" {
  description = "Secret value to store"
  type = map(string)
  default = {
    "user1" = "passwordprasad"
    "user2" = "passwordchanti"
  }
}

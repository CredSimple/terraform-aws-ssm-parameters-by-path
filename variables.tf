variable "path" {
  type        = string
  description = "The AWS SSM Parameter Store path that will be read from."
}

variable "with_decryption" {
  type        = bool
  description = "(Optional) Whether to return decrypted `SecureString` value. Defaults to `true`."
  default     = true
}

variable "recursive" {
  type        = bool
  description = "(Optional) Whether to recursively return parameters under `path`. Defaults to `false`."
  default     = false
}

variable "strip_path" {
  type        = bool
  description = "If true, the path will be stripped from the keys of the resulting map."
  default     = true
}

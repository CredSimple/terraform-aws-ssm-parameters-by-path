locals {
  merged_parameters = merge(
    local.keys_converted,
    local.stringlists
  )
}
output "parameters" {
  value       = local.merged_parameters
  description = "A map of SSM parameters with the key being the parameter name (optionally with the path prefix stripped) and the value being a map of the parameter's attributes."
  sensitive   = true
}

output "arns" {
  value = {
    for k, v in local.merged_parameters : k => v.arn
  }
  description = "A map of SSM parameter ARNs with the key being the parameter name (optionally with the path prefix stripped) and the value being the parameter's ARN."
}

output "names" {
  value = {
    for k, v in local.merged_parameters : k => v.name
  }
  description = "A map of SSM parameter names with the key being the parameter name (optionally with the path prefix stripped) and the value being the parameter's name."
}

output "types" {
  value = {
    for k, v in local.merged_parameters : k => v.type
  }
  description = "A map of SSM parameter types with the key being the parameter name (optionally with the path prefix stripped) and the value being the parameter's type."
}

output "values" {
  value = {
    for k, v in local.merged_parameters : k => v.value
  }
  description = "A map of SSM parameter values with the key being the parameter name (optionally with the path prefix stripped) and the value being the parameter's value."
  sensitive   = true
}

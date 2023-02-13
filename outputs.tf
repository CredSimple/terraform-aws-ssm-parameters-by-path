output "parameters" {
  value       = merge(local.keys_converted, local.stringlists)
  description = "A map of SSM parameters with the key being the parameter name (optionally with the path prefix stripped) and the value being a map of the parameter's attributes."
  sensitive   = true
}

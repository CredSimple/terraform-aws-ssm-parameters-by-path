data "aws_ssm_parameters_by_path" "this" {
  path            = var.path
  with_decryption = var.with_decryption
  recursive       = var.recursive
}

locals {
  # typing less is good
  arns   = data.aws_ssm_parameters_by_path.this.arns
  types  = data.aws_ssm_parameters_by_path.this.types
  names  = data.aws_ssm_parameters_by_path.this.names
  values = data.aws_ssm_parameters_by_path.this.values
  parameter_map = zipmap(local.names, [for i, arn in local.arns : {
    arn   = arn
    name  = local.names[i]
    type  = local.types[i]
    value = local.values[i]
  }])

  keys_converted = {
    for key, value in local.parameter_map : (var.strip_path == true ? trimprefix(key, var.path) : key) => value
  }

  stringlists = {
    for key, value in local.keys_converted : key => merge(value, { value = split(",", value.value) }) if value.type == "StringList"
  }

}

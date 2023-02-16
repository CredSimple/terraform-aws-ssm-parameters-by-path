module "example" {
  source     = "../../"
  path       = "/example/path/"
  strip_path = true

  depends_on = [
    aws_ssm_parameter.name,
    aws_ssm_parameter.other,
    aws_ssm_parameter.alist
  ]
}

resource "local_file" "example_params" {
  filename = "example_params.json"
  content  = jsonencode(module.example.parameters)
}

resource "local_file" "example_arns" {
  filename = "example_arns.json"
  content  = jsonencode(module.example.arns)
}

resource "local_file" "example_names" {
  filename = "example_names.json"
  content  = jsonencode(module.example.names)
}

resource "local_file" "example_types" {
  filename = "example_types.json"
  content  = jsonencode(module.example.types)
}

resource "local_file" "example_values" {
  filename = "example_values.json"
  content  = jsonencode(module.example.values)
}

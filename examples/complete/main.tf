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

resource "local_file" "example" {
  filename = "example-output.json"
  content  = jsonencode(module.example.parameters)
}

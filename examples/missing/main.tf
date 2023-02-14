module "example" {
  source     = "../../"
  path       = "/example/path/does/not/exist/"
  strip_path = true
}

resource "local_file" "example" {
  count    = length(keys(module.example.parameters)) > 0 ? 1 : 0
  filename = "example-output.json"
  content  = jsonencode(module.example.parameters)
}

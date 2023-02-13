resource "aws_ssm_parameter" "name" {
  name  = "/example/path/name"
  type  = "String"
  value = "example_name"
}

resource "aws_ssm_parameter" "other" {
  name  = "/example/path/other"
  type  = "String"
  value = "example_other"
}

resource "aws_ssm_parameter" "alist" {
  name = "/example/path/alist"
  type = "StringList"
  value = join(",", [
    "example_alist_1",
    "example_alist_2",
    "example_alist_3",
  ])
}

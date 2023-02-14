# AWS SSM Parameters By Path Terraform Module

This module allows you to retrieve all parameters from a given path in AWS SSM Parameter Store and converts them to a map of key/value pairs.

## Usage

```hcl
module "ssm_parameters" {
  source = "github.com/credsimple/terraform-aws-ssm-parameters-by-path"

  path = "/myapp"
}
```

## Examples

Examples codified under the [`examples`](./examples/) are intended to give users references for how to use the module(s) as well as testing/validating changes to the source code of the module(s).  If contributing to the project, please be sure to make any appropriate updates to the relevant examples to allow maintainers to test your changes and to keep the examples up to date for users. Thank you!

- [Complete](./examples/complete)

<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameters_by_path.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameters_by_path) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_path"></a> [path](#input\_path) | The AWS SSM Parameter Store path that will be read from. | `string` | n/a | yes |
| <a name="input_recursive"></a> [recursive](#input\_recursive) | (Optional) Whether to recursively return parameters under `path`. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_strip_path"></a> [strip\_path](#input\_strip\_path) | If true, the path will be stripped from the keys of the resulting map. | `bool` | `true` | no |
| <a name="input_with_decryption"></a> [with\_decryption](#input\_with\_decryption) | (Optional) Whether to return decrypted `SecureString` value. Defaults to `true`. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameters"></a> [parameters](#output\_parameters) | A map of SSM parameters with the key being the parameter name (optionally with the path prefix stripped) and the value being a map of the parameter's attributes. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-restore -->
## Authors

Module is maintained by the [andros.co SRE team](https://andros.co) with help from [these awesome contributors](https://github.com/credsimple/terraform-aws-datadog-privatelink/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/credsimple/terraform-aws-datadog-privatelink/tree/master/LICENSE) for full details.

# terraform-aws-s3-private

## Description

Module to create a private S3 bucket with encryption.

## Document Update

```shell
terraform-docs markdown --output-file ./README.md .
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.39.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.39.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_arn"></a> [kms\_arn](#input\_kms\_arn) | encryption kms arn | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | bucket name | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | bucket prefix | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | n/a |
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | n/a |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | n/a |
<!-- END_TF_DOCS -->
# Complete

Configuration in this directory creates set of mns topic including mns subscription

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

This example provides the tf variables file in the folder `tfvars`. If you want to create or update this example,
you can run this example as the following commands:
```bash
$ terraform plan -var-file=tfvars/01-update.tfvars
$ terraform apply -var-file=tfvars/01-update.tfvars
```

Also, you can add more variables files in the folder `tfvars`.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| this_topic_name    |     the name of topic        |
| this_subcription_name    |     the name of subscription        |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
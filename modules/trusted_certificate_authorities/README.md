# trusted_certificate_authorities - Intersight Trusted Certificate Authorities Policy Terraform Module

## Usage

```hcl
module "trusted_certificate_authorities" {

  source = "terraform-cisco-modules/imm/intersight//modules/trusted_certificate_authorities"

  # omitted...
}
```

This module will create a Kubernetes Trusted Registries Policy in Intersight.  This is consumed by Kubernetes Clusters.  

These resources are consumed

* [Trusted Certificate Authorities](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_trusted_registries_policy)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [intersight_kubernetes_trusted_registries_policy.trusted_registries](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_trusted_registries_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the concrete policy. | `string` | `"k8s_registry"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_root_ca_registries"></a> [root\_ca\_registries](#input\_root\_ca\_registries) | The list of root CA certificates to trust. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_unsigned_registries"></a> [unsigned\_registries](#input\_unsigned\_registries) | The list of unsigned registries to allow docker trust. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Trusted Certificate Authorities Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# domain_multicast - Intersight Multicast Policy Terraform Module

## Usage

```hcl
module "multicast_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_multicast"

  # omitted...
}
```

This module will create a Multicast Policy in Intersight.  This can be used for VLAN Configurations that require a Multicast Policy.  

These resources are consumed

* [multicast_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_multicast_policy)

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
| [intersight_fabric_multicast_policy.multicast](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_multicast_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"multicast"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_querier_ip"></a> [querier\_ip](#input\_querier\_ip) | IP Address of the IGMP Querier to Assign to the VLAN through this Policy. | `string` | `""` | no |
| <a name="input_querier_state"></a> [querier\_state](#input\_querier\_state) | Administrative state of the IGMP Querier for the VLANs Assigned to this Policy.  Options are:<br>* Disabled - (Default)<br>* Enabled | `string` | `"Disabled"` | no |
| <a name="input_snooping_state"></a> [snooping\_state](#input\_snooping\_state) | Administrative State for Snooping for the VLANs Assigned to this Policy.<br>* Disabled<br>* Enabled - (Default) | `string` | `"Enabled"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Multicast Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

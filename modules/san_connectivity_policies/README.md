# san_connectivity_policies - Intersight SAN Connectivity Policy Terraform Module

## Usage

```hcl
module "san_connectivity" {

  source = "terraform-cisco-modules/imm/intersight//modules/san_connectivity_policies"

  # omitted...
}
```

This module will create a SAN Connectivity Policy in Intersight.  This can be used to create Profiles and Templates that require a SAN Connectivity Policy.  

These resources are consumed

* [SAN Connectivity](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_san_connectivity_policy)

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
| [intersight_vnic_san_connectivity_policy.san_connectivity](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_san_connectivity_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"san_connectivity"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_static_wwnn_address"></a> [static\_wwnn\_address](#input\_static\_wwnn\_address) | The WWNN address for the server node must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx.  Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF.  To ensure uniqueness of WWN's in the SAN fabric, you are strongly encouraged to use the WWN prefix - 20:00:00:25:B5:xx:xx:xx. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_platform"></a> [target\_platform](#input\_target\_platform) | The platform for which the server profile is applicable. It can either be:<br>* Standalone - a server that is operating independently<br>* FIAttached - A Server attached to a Intersight Managed Domain. | `string` | `"FIAttached"` | no |
| <a name="input_vhba_placement_mode"></a> [vhba\_placement\_mode](#input\_vhba\_placement\_mode) | The mode used for placement of vNICs on network adapters. It can either be Auto or Custom.<br>* auto - The placement of the vNICs / vHBAs on network adapters is automatically determined by the system.<br>* custom - The placement of the vNICs / vHBAs on network adapters is manually chosen by the user. | `string` | `"custom"` | no |
| <a name="input_wwnn_allocation_type"></a> [wwnn\_allocation\_type](#input\_wwnn\_allocation\_type) | Type of allocation selected to assign a WWNN address for the server node.<br>* POOL - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface.<br>* STATIC - The user assigns a static mac/wwn address for the Virtual Interface. | `string` | `"POOL"` | no |
| <a name="input_wwnn_pool"></a> [wwnn\_pool](#input\_wwnn\_pool) | WWNN Pool to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_wwnn_static_address"></a> [wwnn\_static\_address](#input\_wwnn\_static\_address) | The WWNN address for the server node must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx.Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF.To ensure uniqueness of WWN's in the SAN fabric, you are strongly encouraged to use the WWN prefix - 20:00:00:25:B5:xx:xx:xx. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | SAN Connectivity Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

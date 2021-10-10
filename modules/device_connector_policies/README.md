# device_connector_policies - Intersight Device Connector Policy Terraform Module

## Usage

```hcl
module "device_connector" {

  source = "terraform-cisco-modules/imm/intersight//modules/device_connector_policies"

  # omitted...
}
```

This module will create a Device Connector Policy in Intersight.  This can be used UCS Domain Policies and Standalone Rackmount UCS Profiles.  

These resources are consumed

* [Device Connector](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/deviceconnector_policy)

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
| [intersight_deviceconnector_policy.device_connector](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/deviceconnector_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_configuration_lockout"></a> [configuration\_lockout](#input\_configuration\_lockout) | Locks Down Configuration to Intersight Only. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"device_connector"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Device Connector Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

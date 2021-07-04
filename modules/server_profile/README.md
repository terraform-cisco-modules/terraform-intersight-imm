# server_profile - Intersight UCS Server Profile Terraform Module

## Usage

```hcl
module "server_profile" {

  source = "terraform-cisco-modules/imm/intersight//modules/server_profile"

  # omitted...
}
```

This module will create a UCS Server Profile in Intersight.  This can be assigned to Fabric Attached Servers or Standalone Servers.  

These resources are created

* [server_profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/server_profile)

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
| [intersight_server_profile.server_profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/server_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | Action to Perform on the Switch Profile Assignment.  Options are {Deploy\|No-op\|Unassign}. | `string` | `"No-op"` | no |
| <a name="input_assigned_server"></a> [assigned\_server](#input\_assigned\_server) | A reference to a computePhysical resource. | `list(map(string))` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"server_profile"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_platform"></a> [target\_platform](#input\_target\_platform) | The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.<br> * FIAttached - Servers which are connected to a Fabric Interconnect that is managed by Intersight.<br> * Standalone - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected. | `string` | `"FIAttached"` | no |
| <a name="input_type"></a> [type](#input\_type) | Defines the type of the profile. Accepted values are 'instance' or 'template'. | `string` | `"instance"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_cluster_moid"></a> [domain\_cluster\_moid](#output\_domain\_cluster\_moid) | UCS Server Profile Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

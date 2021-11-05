# ucs_server_profiles - Intersight UCS Server Profile Terraform Module

## Usage

```hcl
module "ucs_server_profile" {

  source = "terraform-cisco-modules/imm/intersight//modules/ucs_server_profiles"

  # omitted...
}
```

This module will create a UCS Server Profile in Intersight.  This can be assigned to Fabric Attached Servers or Standalone Servers.  

These resources are created

* [UCS Server Profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/server_profile)

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
| <a name="input_action"></a> [action](#input\_action) | Action to Perform on the Chassis Profile Assignment.  Options are:<br>* Deploy<br>* No-op<br>* Unassign | `string` | `"No-op"` | no |
| <a name="input_assigned_server"></a> [assigned\_server](#input\_assigned\_server) | A reference to a computePhysical resource.<br>* moid - Managed Object ID<br>* object\_type - Either Blade or RackUnit | `list(map(string))` | `[]` | no |
| <a name="input_associated_server_pool"></a> [associated\_server\_pool](#input\_associated\_server\_pool) | A reference to a resourcepoolPool resource.<br>* moid - Managed Object ID | `list(map(string))` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description to Assign to the Profile. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Profile. | `string` | `"server_profile"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_server_assignment_mode"></a> [server\_assignment\_mode](#input\_server\_assignment\_mode) | Source of the server assigned to the server profile. Values can be Static, Pool or None. Static is used if a server is attached directly to server profile. Pool is used if a resource pool is attached to server profile. None is used if no server or resource pool is attached to server profile.<br>* None - No server is assigned to the server profile.<br>* Pool - Server is assigned from a resource pool.<br>* Static - Server is directly assigned to server profile using assign server. | `string` | `"None"` | no |
| <a name="input_src_template"></a> [src\_template](#input\_src\_template) | A reference to a policyAbstractProfile resource.. | `set(string)` | `[]` | no |
| <a name="input_static_uuid_address"></a> [static\_uuid\_address](#input\_static\_uuid\_address) | The UUID address for the server must include UUID prefix xxxxxxxx-xxxx-xxxx along with the UUID suffix of format xxxx-xxxxxxxxxxxx. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_platform"></a> [target\_platform](#input\_target\_platform) | The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.<br>* FIAttached - Servers which are connected to a Fabric Interconnect that is managed by Intersight.<br>* Standalone - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected. | `string` | `"FIAttached"` | no |
| <a name="input_type"></a> [type](#input\_type) | Defines the type of the profile. Accepted values are:<br>  * instance<br>  * template | `string` | `"instance"` | no |
| <a name="input_uuid_pool"></a> [uuid\_pool](#input\_uuid\_pool) | A reference to a uuidpoolPool resource. | `list(map(string))` | `[]` | no |
| <a name="input_wait_for_completion"></a> [wait\_for\_completion](#input\_wait\_for\_completion) | This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Server Profile Managed Object ID (moid). |
| <a name="output_name"></a> [name](#output\_name) | UCS Server Profile Name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

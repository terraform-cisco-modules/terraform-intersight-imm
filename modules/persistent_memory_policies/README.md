# persistent_memory_policies - Intersight Persistent Memory Policy Terraform Module

## Usage

```hcl
module "persistent_memory" {

  source = "terraform-cisco-modules/imm/intersight//modules/persistent_memory_policies"

  # omitted...
}
```

This module will create a Persistent Memory Policy in Intersight.  This can be used to create Profiles and Templates that require a Persistent Memory Policy.  

These resources are consumed

* [Persistent Memory](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/memory_persistent_memory_policy)

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
| [intersight_memory_persistent_memory_policy.persistent_memory](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/memory_persistent_memory_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_management_mode"></a> [management\_mode](#input\_management\_mode) | Management Mode of the policy. This can be either Configured from Intersight or Configured from Operating System.<br>* configured-from-intersight - The Persistent Memory Modules are configured from Intersight thorugh Persistent Memory policy.<br>* configured-from-operating-system - The Persistent Memory Modules are configured from operating system thorugh OS tools. | `string` | `"configured-from-intersight"` | no |
| <a name="input_memory_mode_percentage"></a> [memory\_mode\_percentage](#input\_memory\_mode\_percentage) | Volatile memory percentage.  Range is 0-100. | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"persistent_memory"` | no |
| <a name="input_namespaces"></a> [namespaces](#input\_namespaces) | Namespace is a partition made in one or more Persistent Memory Regions. You can create a namespace in Raw or Block mode.<br>Key - Name of the Logical Namespace<br>* capacity - Capacity of this Namespace that is created or modified.<br>* mode - Default is raw.  Mode of this Namespace that is created or modified.<br>  - block - The block mode of Persistent Memory Namespace.<br>  - raw - The raw mode of Persistent Memory Namespace.<br>* socket\_id - Default is 1.  Socket ID of the region on which this Namespace has to be created or modified.<br>  - 1 - The first CPU socket in a server.<br>  - 2 - The second CPU socket in a server.<br>  - 3 - The third CPU socket in a server.<br>  - 4 - The fourth CPU socket in a server.<br>* socket\_memory\_id - Socket Memory ID of the region on which this Namespace has to be created or modified.<br>  This is only applicable if running in app-direct-non-interleaved mode.  Options are:<br>   - "Not Applicable" - (Default) - The socket memory ID is not applicable if app-direct persistent memory type is selected in the goal<br>   - 2 - The second socket memory ID within a socket in a server.<br>   - 4 - The fourth socket memory ID within a socket in a server.<br>   - 6 - The sixth socket memory ID within a socket in a server.<br>   - 8 - The eighth socket memory ID within a socket in a server.<br>   - 10 - The tenth socket memory ID within a socket in a server.<br>   - 12 - The twelfth socket memory ID within a socket in a server. | <pre>map(object(<br>    {<br>      capacity         = number<br>      mode             = optional(string)<br>      socket_id        = optional(number)<br>      socket_memory_id = optional(string)<br><br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_persistent_memory_type"></a> [persistent\_memory\_type](#input\_persistent\_memory\_type) | Type of the Persistent Memory configuration where the Persistent Memory Modules are combined in an interleaved set or not.<br>* app-direct - The App Direct interleaved Persistent Memory type.<br>* app-direct-non-interleaved - The App Direct non-interleaved Persistent Memory type. | `string` | `"app-direct"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_retain_namespaces"></a> [retain\_namespaces](#input\_retain\_namespaces) | Persistent Memory Namespaces to be retained or not. | `bool` | `true` | no |
| <a name="input_secure_passphrase"></a> [secure\_passphrase](#input\_secure\_passphrase) | Secure passphrase to be applied on the Persistent Memory Modules on the server. The allowed characters are a-z, A to Z, 0-9, and special characters =, !, &, #, $, %, +, ^, @, \_, *, -. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Persistent Memory Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# policies_vhba - Intersight Fibre Channel (vHBA) Qos Policy Terraform Module

## Usage

```hcl
module "vhba" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vhba"

  # omitted...
}
```

This module will create an Fibre Channel (vHBA) Policy in Intersight.  This can be used to create Profiles and Templates that require a vHBA Policy.  

These resources are consumed

* [vhba](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_if)

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
| [intersight_vhba_eth_if.vhba](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vhba_eth_if) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_failover_enabled"></a> [failover\_enabled](#input\_failover\_enabled) | Setting this to true esnures that the traffic failsover from one uplink to another auotmatically in case of an uplink failure. It is applicable for Cisco VIC adapters only which are connected to Fabric Interconnect cluster. The uplink if specified determines the primary uplink in case of a failover. | `bool` | `false` | no |
| <a name="input_iscsi_ip_v4_address_allocation_type"></a> [iscsi\_ip\_v4\_address\_allocation\_type](#input\_iscsi\_ip\_v4\_address\_allocation\_type) | Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6. | `number` | `0` | no |
| <a name="input_mtu"></a> [mtu](#input\_mtu) | The Maximum Transmission Unit (MTU) or packet size that the virtual interface accepts.  Value can be between 1500-9000. | `number` | `1500` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vhba"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | The priortity matching the System QoS specified in the fabric profile.  Options are {Platinum\|Gold\|Silver\|Bronze\|Best Effort\|FC}. | `string` | `"Best Effort"` | no |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.  Range is between 0-100000. | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_trust_host_cos"></a> [trust\_host\_cos](#input\_trust\_host\_cos) | Enables usage of the Class of Service provided by the operating system. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Fibre Channel (vHBA) Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

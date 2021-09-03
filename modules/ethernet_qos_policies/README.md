# ethernet_qos_policies - Intersight Ethernet Qos Policy Terraform Module

## Usage

```hcl
module "ethernet_qos" {

  source = "terraform-cisco-modules/imm/intersight//modules/ethernet_qos_policies"

  # omitted...
}
```

This module will create an Ethernet Qos Policy in Intersight.  This can be used to create Profiles and Templates that require a Ethernet Qos Policy.  

These resources are consumed

* [Ethernet QoS](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_qos_policy)

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
| [intersight_vnic_eth_qos_policy.vnic_qos](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_qos_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_burst"></a> [burst](#input\_burst) | The burst traffic, in bytes, allowed on the vNIC.  Value can be between 1024-1000000. | `number` | `1024` | no |
| <a name="input_cos"></a> [cos](#input\_cos) | Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6. For FIAttached this should always be 0. | `number` | `0` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_trust_host_cos"></a> [enable\_trust\_host\_cos](#input\_enable\_trust\_host\_cos) | Enables usage of the Class of Service provided by the operating system. | `bool` | `false` | no |
| <a name="input_mtu"></a> [mtu](#input\_mtu) | The Maximum Transmission Unit (MTU) or packet size that the virtual interface accepts.  Value can be between 1500-9000. | `number` | `1500` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_qos"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | The priortity matching the System QoS specified in the fabric profile.  Options are:<br>* Platinum<br>* Gold<br>* Silver<br>* Bronze<br>* Best Effort<br>* FC | `string` | `"Best Effort"` | no |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.  Range is between 0-100000. | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Ethernet Qos Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

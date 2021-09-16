# flow_control_policies - Intersight Flow Control Policy Terraform Module

## Usage

```hcl
module "flow_control" {

  source = "terraform-cisco-modules/imm/intersight//modules/flow_control_policies"

  # omitted...
}
```

This module will create a Flow Control Policy in Intersight.  This can be used to create Domain Policies that require a Flow Control Policy.  

These resources are consumed

* [Flow Control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_flow_control_policy)

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
| [intersight_fabric_flow_control_policy.flow_control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_flow_control_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"flow_control"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_priority_flow_control_mode"></a> [priority\_flow\_control\_mode](#input\_priority\_flow\_control\_mode) | Configure PFC on a per-port basis to enable the no-drop behavior for the CoS as defined by the active network qos policy.<br>* auto - Enables the no-drop CoS values to be advertised by the DCBXP and negotiated with the peer.  A successful negotiation enables PFC on the no-drop CoS.  Any failures because of a mismatch in the capability of peers causes the PFC not to be enabled.<br>* on - Enables PFC on the local port regardless of the capability of the peers. | `string` | `"auto"` | no |
| <a name="input_receive_direction"></a> [receive\_direction](#input\_receive\_direction) | Link-level Flow Control configured in the receive direction.<br>* Disabled - Admin configured Disabled State.<br>* Enabled - Admin configured Enabled State. | `string` | `"Disabled"` | no |
| <a name="input_send_direction"></a> [send\_direction](#input\_send\_direction) | Link-level Flow Control configured in the send direction.<br>* Disabled - Admin configured Disabled State.<br>* Enabled - Admin configured Enabled State. | `string` | `"Disabled"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Flow Control Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

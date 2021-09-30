# operating_system_install - Intersight Operating System Install Terraform Module

## Usage

```hcl
module "operating_system_install" {

  source = "terraform-cisco-modules/imm/intersight//modules/operating_system_install"

  # omitted...
}
```

This module will Install an Operating System on a Baremetal Appliance.  

These resources are consumed

* [OS Install](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/os_install)

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
| [intersight_os_install.install](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/os_install) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_answers"></a> [answers](#input\_answers) | * ip\_config\_type - IP configuration type. Values are Static or Dynamic configuration of IP.In case of static IP configuration, IP address, gateway and other details needto be populated. In case of dynamic the IP configuration is obtained dynamicallyfrom DHCP.<br>  - DHCP - (Default).  In case of dynamic IP configuration, the IP address, netmask and gateway detailsare obtained from DHCP.<br>  - static - In case of static IP configuraton, provide the details such as IP address, netmask, and gateway. | <pre>map(object(<br>    {<br>      ip_config_type = string<br>    }<br>  ))</pre> | <pre>{<br>  "default": {<br>    "ip_config_type": "DHCP"<br>  }<br>}</pre> | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_install_method"></a> [install\_method](#input\_install\_method) | The install method to be used for OS installation - vMedia, iPXE. Only vMedia is supported as of now.<br>* vMedia - OS image is mounted as vMedia in target server for OS installation. | `string` | `"vMedia"` | no |
| <a name="input_install_target"></a> [install\_target](#input\_install\_target) | Install Target on which Operating system is installed.<br>* vMedia - OS image is mounted as vMedia in target server for OS installation. | `string` | `"vMedia"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"install"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_receive_direction"></a> [receive\_direction](#input\_receive\_direction) | Link-level Flow Control configured in the receive direction.<br>* Disabled - Admin configured Disabled State.<br>* Enabled - Admin configured Enabled State. | `string` | `"Disabled"` | no |
| <a name="input_send_direction"></a> [send\_direction](#input\_send\_direction) | Link-level Flow Control configured in the send direction.<br>* Disabled - Admin configured Disabled State.<br>* Enabled - Admin configured Enabled State. | `string` | `"Disabled"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_wait_for_completion"></a> [wait\_for\_completion](#input\_wait\_for\_completion) | This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Operating System Install Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

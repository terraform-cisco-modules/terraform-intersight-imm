# policies_vnic_adapter - Intersight Ethernet (vNIC) Adapter Policy Terraform Module

## Usage

```hcl
module "vnic_adapter" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_adapter"

  # omitted...
}
```

This module will create an Ethernet (vNIC) Adapter Policy in Intersight.  This can be used to create Profiles and Templates that require a Ethernet Adapter Policy.  

These resources are consumed

* [vnic_adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_adapter_policy)

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
| [intersight_vnic_eth_adapter_policy.vnic_adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_adapter_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advanced_filter"></a> [advanced\_filter](#input\_advanced\_filter) | Enables advanced filtering on the interface. | `bool` | `false` | no |
| <a name="input_arfs_enable"></a> [arfs\_enable](#input\_arfs\_enable) | Status of Accelerated Receive Flow Steering on the virtual ethernet interface. | `bool` | `false` | no |
| <a name="input_completion_queue_count"></a> [completion\_queue\_count](#input\_completion\_queue\_count) | The number of completion queue resources to allocate. In general, the number of completion queue resources to allocate is equal to the number of transmit queue resources plus the number of receive queue resources.  Range is 1-2000. | `number` | `5` | no |
| <a name="input_completion_ring_size"></a> [completion\_ring\_size](#input\_completion\_ring\_size) | The number of descriptors in each completion queue.  Range is 1-256. | `number` | `1` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_geneve_enabled"></a> [geneve\_enabled](#input\_geneve\_enabled) | GENEVE offload protocol allows you to create logical networks that span physical network boundaries by allowing any information to be encoded in a packet and passed between tunnel endpoints. | `bool` | `false` | no |
| <a name="input_interrupt_coalescing_type"></a> [interrupt\_coalescing\_type](#input\_interrupt\_coalescing\_type) | Interrupt Coalescing Type. This can be one of the following:- MIN - The system waits for the time specified in the Coalescing Time field before sending another interrupt event IDLE - The system does not send an interrupt until there is a period of no activity lasting as least as long as the time specified in the Coalescing Time field.  Options are:<br>* IDLE<br>* MIN | `string` | `"MIN"` | no |
| <a name="input_interrupt_interrupts"></a> [interrupt\_interrupts](#input\_interrupt\_interrupts) | The number of interrupt resources to allocate. Typical value is be equal to the number of completion queue resources.  Range is 1-1024. | `number` | `8` | no |
| <a name="input_interrupt_mode"></a> [interrupt\_mode](#input\_interrupt\_mode) | The preferred driver interrupt mode. This can be one of the following:<br>* INTx - Line-based interrupt (INTx) mechanism similar to the one used in Legacy systems.<br>* MSI - Message Signaled Interrupt (MSI) mechanism that treats messages as interrupts.<br>* MSIx - Message Signaled Interrupt (MSI) mechanism with the optional extension (MSIx).<br>MSIx is the recommended and default option. | `string` | `"MSIx"` | no |
| <a name="input_interrupt_scaling"></a> [interrupt\_scaling](#input\_interrupt\_scaling) | Enables Interrupt Scaling on the interface. | `bool` | `false` | no |
| <a name="input_interrupt_timer"></a> [interrupt\_timer](#input\_interrupt\_timer) | The time to wait between interrupts or the idle period that must be encountered before an interrupt is sent. To turn off interrupt coalescing, enter 0 (zero) in this field.  Range is 0-65535. | `number` | `125` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_adapter"` | no |
| <a name="input_nvgre_enable"></a> [nvgre\_enable](#input\_nvgre\_enable) | Status of the Network Virtualization using Generic Routing Encapsulation on the virtual ethernet interface. | `bool` | `false` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_receive_side_scaling"></a> [receive\_side\_scaling](#input\_receive\_side\_scaling) | Receive Side Scaling allows the incoming traffic to be spread across multiple CPU cores. | `bool` | `false` | no |
| <a name="input_roce_cos"></a> [roce\_cos](#input\_roce\_cos) | The Class of Service for RoCE on this virtual interface.  Options are:<br>* 1<br>* 2<br>* 4<br>* 5<br>* 6 | `number` | `5` | no |
| <a name="input_roce_enable"></a> [roce\_enable](#input\_roce\_enable) | If enabled sets RDMA over Converged Ethernet (RoCE) on this virtual interface. | `bool` | `false` | no |
| <a name="input_roce_memory_regions"></a> [roce\_memory\_regions](#input\_roce\_memory\_regions) | The number of memory regions per adapter. Recommended value = integer power of 2.  Range is 0-524288. | `number` | `0` | no |
| <a name="input_roce_queue_pairs"></a> [roce\_queue\_pairs](#input\_roce\_queue\_pairs) | The number of queue pairs per adapter. Recommended value = integer power of 2.  Range is 0-8192. | `number` | `0` | no |
| <a name="input_roce_resource_groups"></a> [roce\_resource\_groups](#input\_roce\_resource\_groups) | The number of resource groups per adapter. Recommended value = be an integer power of 2 greater than or equal to the number of CPU cores on the system for optimum performance.  Range is 0-128. | `number` | `0` | no |
| <a name="input_roce_version"></a> [roce\_version](#input\_roce\_version) | Configure RDMA over Converged Ethernet (RoCE) version on the virtual interface. Only RoCEv1 is supported on Cisco VIC 13xx series adapters and only RoCEv2 is supported on Cisco VIC 14xx series adapters.  Options are:<br>* 1<br>* 2 | `number` | `1` | no |
| <a name="input_rss_hash_ipv4_hash"></a> [rss\_hash\_ipv4\_hash](#input\_rss\_hash\_ipv4\_hash) | When enabled, the IPv4 address is used for traffic distribution. | `bool` | `true` | no |
| <a name="input_rss_hash_ipv6_ext_hash"></a> [rss\_hash\_ipv6\_ext\_hash](#input\_rss\_hash\_ipv6\_ext\_hash) | When enabled, the IPv6 extensions are used for traffic distribution. | `bool` | `false` | no |
| <a name="input_rss_hash_ipv6_hash"></a> [rss\_hash\_ipv6\_hash](#input\_rss\_hash\_ipv6\_hash) | When enabled, the IPv6 address is used for traffic distribution. | `bool` | `true` | no |
| <a name="input_rss_hash_tcp_ipv4_hash"></a> [rss\_hash\_tcp\_ipv4\_hash](#input\_rss\_hash\_tcp\_ipv4\_hash) | When enabled, both the IPv4 address and TCP port number are used for traffic distribution. | `bool` | `true` | no |
| <a name="input_rss_hash_tcp_ipv6_ext_hash"></a> [rss\_hash\_tcp\_ipv6\_ext\_hash](#input\_rss\_hash\_tcp\_ipv6\_ext\_hash) | When enabled, both the IPv6 extensions and TCP port number are used for traffic distribution. | `bool` | `false` | no |
| <a name="input_rss_hash_tcp_ipv6_hash"></a> [rss\_hash\_tcp\_ipv6\_hash](#input\_rss\_hash\_tcp\_ipv6\_hash) | When enabled, both the IPv6 address and TCP port number are used for traffic distribution. | `bool` | `true` | no |
| <a name="input_rss_hash_udp_ipv4_hash"></a> [rss\_hash\_udp\_ipv4\_hash](#input\_rss\_hash\_udp\_ipv4\_hash) | When enabled, both the IPv4 address and UDP port number are used for traffic distribution. | `bool` | `false` | no |
| <a name="input_rss_hash_udp_ipv6_hash"></a> [rss\_hash\_udp\_ipv6\_hash](#input\_rss\_hash\_udp\_ipv6\_hash) | When enabled, both the IPv6 address and UDP port number are used for traffic distribution. | `bool` | `false` | no |
| <a name="input_rx_queue_count"></a> [rx\_queue\_count](#input\_rx\_queue\_count) | The number of queue resources to allocate.  Range is 1-1000. | `number` | `4` | no |
| <a name="input_rx_ring_size"></a> [rx\_ring\_size](#input\_rx\_ring\_size) | The number of descriptors in each queue.  Range is 64-4096. | `number` | `512` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_tcp_offload_large_recieve"></a> [tcp\_offload\_large\_recieve](#input\_tcp\_offload\_large\_recieve) | Enables the reassembly of segmented packets in hardware before sending them to the CPU. | `bool` | `true` | no |
| <a name="input_tcp_offload_large_send"></a> [tcp\_offload\_large\_send](#input\_tcp\_offload\_large\_send) | Enables the CPU to send large packets to the hardware for segmentation. | `bool` | `true` | no |
| <a name="input_tcp_offload_rx_checksum"></a> [tcp\_offload\_rx\_checksum](#input\_tcp\_offload\_rx\_checksum) | When enabled, the CPU sends all packet checksums to the hardware for validation. | `bool` | `true` | no |
| <a name="input_tcp_offload_tx_checksum"></a> [tcp\_offload\_tx\_checksum](#input\_tcp\_offload\_tx\_checksum) | When enabled, the CPU sends all packets to the hardware so that the checksum can be calculated. | `bool` | `true` | no |
| <a name="input_tx_queue_count"></a> [tx\_queue\_count](#input\_tx\_queue\_count) | The number of queue resources to allocate.  Range is 1-1000. | `number` | `1` | no |
| <a name="input_tx_ring_size"></a> [tx\_ring\_size](#input\_tx\_ring\_size) | The number of descriptors in each queue.  Range is 64-4096. | `number` | `256` | no |
| <a name="input_uplink_failback_timeout"></a> [uplink\_failback\_timeout](#input\_uplink\_failback\_timeout) | Uplink Failback Timeout in seconds when uplink failover is enabled for a vNIC. After a vNIC has started using its secondary interface, this setting controls how long the primary interface must be available before the system resumes using the primary interface for the vNIC.  Range is 0-600. | `number` | `5` | no |
| <a name="input_vxlan_enable"></a> [vxlan\_enable](#input\_vxlan\_enable) | Status of the Virtual Extensible LAN Protocol on the virtual ethernet interface. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Ethernet (vNIC) Adapter Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# Intersight Management Mode Domain Examples

## This folder contains examples of how to consume the base modules.  This is not meant to be a working deployment

### Examples in this Directory

* Flow Control Policy
* Link Aggregation Policy
* Link Control Policy
* Multicast Policy
* Port Policy with:
    Port Mode
    LAN Uplink
    LAN Uplink Port-Channel
    SAN Uplink
    SAN Uplink Port-Channel
    Server Port
* Switch Control
* System QoS Policy
* UCS Domain Cluster Profile
* UCS Domain Switch Profile
* VLAN Policy
    VLAN - Range and list examples for VLAN Creation
* VSAN Policy
    VSAN - Examples for Fabric A and Fabric B assignments

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | >=1.0.11 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | 1.0.11 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_flow_control_example"></a> [flow\_control\_example](#module\_flow\_control\_example) | terraform-cisco-modules/imm/intersight//modules/domain_flow_control | n/a |
| <a name="module_lan_uplink_example_a"></a> [lan\_uplink\_example\_a](#module\_lan\_uplink\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan | n/a |
| <a name="module_lan_uplink_example_b"></a> [lan\_uplink\_example\_b](#module\_lan\_uplink\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan | n/a |
| <a name="module_lan_uplink_port_channel_example_a"></a> [lan\_uplink\_port\_channel\_example\_a](#module\_lan\_uplink\_port\_channel\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan_port_channel | n/a |
| <a name="module_lan_uplink_port_channel_example_b"></a> [lan\_uplink\_port\_channel\_example\_b](#module\_lan\_uplink\_port\_channel\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan_port_channel | n/a |
| <a name="module_link_aggregation_example"></a> [link\_aggregation\_example](#module\_link\_aggregation\_example) | terraform-cisco-modules/imm/intersight//modules/domain_link_aggregation | n/a |
| <a name="module_link_control_example"></a> [link\_control\_example](#module\_link\_control\_example) | terraform-cisco-modules/imm/intersight//modules/domain_link_control | n/a |
| <a name="module_multicast_example"></a> [multicast\_example](#module\_multicast\_example) | terraform-cisco-modules/imm/intersight//modules/domain_multicast | n/a |
| <a name="module_port_mode_example_a"></a> [port\_mode\_example\_a](#module\_port\_mode\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_port_mode | n/a |
| <a name="module_port_mode_example_b"></a> [port\_mode\_example\_b](#module\_port\_mode\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_port_mode | n/a |
| <a name="module_port_policy_example_a"></a> [port\_policy\_example\_a](#module\_port\_policy\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_port_policy | n/a |
| <a name="module_port_policy_example_b"></a> [port\_policy\_example\_b](#module\_port\_policy\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_port_policy | n/a |
| <a name="module_san_uplink_example_a"></a> [san\_uplink\_example\_a](#module\_san\_uplink\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_san | n/a |
| <a name="module_san_uplink_example_b"></a> [san\_uplink\_example\_b](#module\_san\_uplink\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_san | n/a |
| <a name="module_san_uplink_port_channel_example_a"></a> [san\_uplink\_port\_channel\_example\_a](#module\_san\_uplink\_port\_channel\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_san_port_channel | n/a |
| <a name="module_san_uplink_port_channel_example_b"></a> [san\_uplink\_port\_channel\_example\_b](#module\_san\_uplink\_port\_channel\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_uplink_san_port_channel | n/a |
| <a name="module_server_port_example_a1"></a> [server\_port\_example\_a1](#module\_server\_port\_example\_a1) | terraform-cisco-modules/imm/intersight//modules/domain_port_server | n/a |
| <a name="module_server_port_example_a2"></a> [server\_port\_example\_a2](#module\_server\_port\_example\_a2) | terraform-cisco-modules/imm/intersight//modules/domain_port_server | n/a |
| <a name="module_server_port_example_b1"></a> [server\_port\_example\_b1](#module\_server\_port\_example\_b1) | terraform-cisco-modules/imm/intersight//modules/domain_port_server | n/a |
| <a name="module_server_port_example_b2"></a> [server\_port\_example\_b2](#module\_server\_port\_example\_b2) | terraform-cisco-modules/imm/intersight//modules/domain_port_server | n/a |
| <a name="module_switch_cluster_example"></a> [switch\_cluster\_example](#module\_switch\_cluster\_example) | terraform-cisco-modules/imm/intersight//modules/domain_profile_cluster | n/a |
| <a name="module_switch_control_example"></a> [switch\_control\_example](#module\_switch\_control\_example) | terraform-cisco-modules/imm/intersight//modules/domain_switch_control | n/a |
| <a name="module_switch_profile_example_a"></a> [switch\_profile\_example\_a](#module\_switch\_profile\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_profile_switch | n/a |
| <a name="module_switch_profile_example_b"></a> [switch\_profile\_example\_b](#module\_switch\_profile\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_profile_switch | n/a |
| <a name="module_system_qos_example_1"></a> [system\_qos\_example\_1](#module\_system\_qos\_example\_1) | terraform-cisco-modules/imm/intersight//modules/domain_system_qos | n/a |
| <a name="module_system_qos_example_2"></a> [system\_qos\_example\_2](#module\_system\_qos\_example\_2) | terraform-cisco-modules/imm/intersight//modules/domain_system_qos | n/a |
| <a name="module_vlan_example_1"></a> [vlan\_example\_1](#module\_vlan\_example\_1) | terraform-cisco-modules/imm/intersight//modules/domain_vlan | n/a |
| <a name="module_vlan_example_2"></a> [vlan\_example\_2](#module\_vlan\_example\_2) | terraform-cisco-modules/imm/intersight//modules/domain_vlan | n/a |
| <a name="module_vlan_example_3"></a> [vlan\_example\_3](#module\_vlan\_example\_3) | terraform-cisco-modules/imm/intersight//modules/domain_vlan | n/a |
| <a name="module_vlan_policy_example"></a> [vlan\_policy\_example](#module\_vlan\_policy\_example) | terraform-cisco-modules/imm/intersight//modules/domain_vlan_policy | n/a |
| <a name="module_vsan_example_a"></a> [vsan\_example\_a](#module\_vsan\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_vsan | n/a |
| <a name="module_vsan_example_b"></a> [vsan\_example\_b](#module\_vsan\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_vsan | n/a |
| <a name="module_vsan_policy_example_a"></a> [vsan\_policy\_example\_a](#module\_vsan\_policy\_example\_a) | terraform-cisco-modules/imm/intersight//modules/domain_vsan_policy | n/a |
| <a name="module_vsan_policy_example_b"></a> [vsan\_policy\_example\_b](#module\_vsan\_policy\_example\_b) | terraform-cisco-modules/imm/intersight//modules/domain_vsan_policy | n/a |

## Resources

| Name | Type |
|------|------|
| [intersight_organization_organization.org_moid](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/organization_organization) | data source |
| [terraform_remote_state.pools](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_auto_allow_on_uplinks"></a> [auto\_allow\_on\_uplinks](#input\_auto\_allow\_on\_uplinks) | Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI. | `bool` | `true` | no |
| <a name="input_breakout_sw_port"></a> [breakout\_sw\_port](#input\_breakout\_sw\_port) | Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch. | `number` | `0` | no |
| <a name="input_classes"></a> [classes](#input\_classes) | List of Classes (with Attributes) to Assign to the System QoS Policy. | `list(map(string))` | `[]` | no |
| <a name="input_cluster_moid"></a> [cluster\_moid](#input\_cluster\_moid) | List of UCS Domain Cluster Profiles to Assign to the Switch Profile. | `list(map(string))` | `[]` | no |
| <a name="input_custom_mode"></a> [custom\_mode](#input\_custom\_mode) | Custom Port Mode specified for the port range.<br> * FibreChannel - Fibre Channel Port Types.<br> * BreakoutEthernet10G - Breakout Ethernet 10G Port Type.<br> * BreakoutEthernet25G - Breakout Ethernet 25G Port Type. | `string` | `"FibreChannel"` | no |
| <a name="input_default_zoning"></a> [default\_zoning](#input\_default\_zoning) | Enables or Disables the default zoning state.<br> * Enabled - Admin configured Enabled State.<br> * Disabled - Admin configured Disabled State. | `string` | `"Disabled"` | no |
| <a name="input_device_model"></a> [device\_model](#input\_device\_model) | This field specifies the device model that this Port Policy is being configured for.<br> * UCS-FI-6454 - The standard 4th generation UCS Fabric Interconnect with 54 ports.<br> * UCS-FI-64108 - The expanded 4th generation UCS Fabric Interconnect with 108 ports.<br> * unknown - Unknown device type, usage is TBD. | `string` | `"UCS-FI-6454"` | no |
| <a name="input_dns_servers_v4"></a> [dns\_servers\_v4](#input\_dns\_servers\_v4) | List of IPv4 DNS Servers for this Pool. | `list(string)` | `[]` | no |
| <a name="input_dns_servers_v6"></a> [dns\_servers\_v6](#input\_dns\_servers\_v6) | List of IPv6 DNS Servers for this Pool. | `list(string)` | `[]` | no |
| <a name="input_domain_action"></a> [domain\_action](#input\_domain\_action) | System action to trigger the appropriate workflow. Values:<br> - No\_op<br> - ConfigChange<br> - Deploy<br> - Unbind | `string` | `"No_op"` | no |
| <a name="input_domain_profiles"></a> [domain\_profiles](#input\_domain\_profiles) | An array of relationships to fabricSwitchProfile resources. | `list(map(string))` | `[]` | no |
| <a name="input_domain_src_template"></a> [domain\_src\_template](#input\_domain\_src\_template) | A reference to a policyAbstractProfile resource. | `list(map(string))` | `[]` | no |
| <a name="input_domain_type"></a> [domain\_type](#input\_domain\_type) | Defines the type of the profile. Accepted values are instance or template. | `string` | `"instance"` | no |
| <a name="input_enable_trunking"></a> [enable\_trunking](#input\_enable\_trunking) | Enable or Disable Trunking on all of configured FC uplink ports. | `bool` | `false` | no |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_fc_zone_sharing_mode"></a> [fc\_zone\_sharing\_mode](#input\_fc\_zone\_sharing\_mode) | Logical grouping mode for fc ports. | `string` | `""` | no |
| <a name="input_fec"></a> [fec](#input\_fec) | Forward error correction configuration for the port.<br> * Auto - Forward error correction option 'Auto'.<br> * Cl91 - Forward error correction option 'cl91'.<br> * Cl74 - Forward error correction option 'cl74'. | `string` | `"Auto"` | no |
| <a name="input_fill_pattern"></a> [fill\_pattern](#input\_fill\_pattern) | Fill pattern to differentiate the configs in NPIV.<br> * Idle - Fc Fill Pattern type Idle.<br> * Arbff - Fc Fill Pattern type Arbff. | `string` | `"Idle"` | no |
| <a name="input_flow_control_moid"></a> [flow\_control\_moid](#input\_flow\_control\_moid) | A reference to a fabricFlowControlPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_ipv4_enable"></a> [ipv4\_enable](#input\_ipv4\_enable) | Flag to Enable or Disable the IPv4 Address Family for Poliices. | `bool` | `true` | no |
| <a name="input_ipv6_enable"></a> [ipv6\_enable](#input\_ipv6\_enable) | Flag to Enable or Disable the IPv6 Address Family for Poliices. | `bool` | `false` | no |
| <a name="input_is_native"></a> [is\_native](#input\_is\_native) | Used to determine if this VLAN should be untagged on the interfaces. | `bool` | `false` | no |
| <a name="input_lacp_rate"></a> [lacp\_rate](#input\_lacp\_rate) | Flag used to indicate whether LACP PDUs are to be sent 'fast', i.e., every 1 second.<br> * normal - The normal timeout rate is 30 seconds.<br> * fast - The fast timeout rate is 1 second. | `string` | `"normal"` | no |
| <a name="input_lan_uplink_pc_id"></a> [lan\_uplink\_pc\_id](#input\_lan\_uplink\_pc\_id) | Unique Identifier of the port-channel, local to this switch. | `string` | `53` | no |
| <a name="input_lan_uplink_pc_ports"></a> [lan\_uplink\_pc\_ports](#input\_lan\_uplink\_pc\_ports) | List of Ports to Assign to the LAN Port-Channel Policy. | `set(string)` | `[]` | no |
| <a name="input_lan_uplink_port_list"></a> [lan\_uplink\_port\_list](#input\_lan\_uplink\_port\_list) | List of Ports to Assign to the LAN Uplink Policy. | `set(string)` | <pre>[<br>  53,<br>  54<br>]</pre> | no |
| <a name="input_lan_uplink_speed"></a> [lan\_uplink\_speed](#input\_lan\_uplink\_speed) | Admin configured speed for the port.<br> * Auto - Admin configurable speed AUTO ( default ).<br> * 1Gbps - Admin configurable speed 1Gbps.<br> * 10Gbps - Admin configurable speed 10Gbps.<br> * 25Gbps - Admin configurable speed 25Gbps.<br> * 40Gbps - Admin configurable speed 40Gbps.<br> * 100Gbps - Admin configurable speed 100Gbps. | `string` | `"Auto"` | no |
| <a name="input_link_aggregation_moid"></a> [link\_aggregation\_moid](#input\_link\_aggregation\_moid) | A reference to a fabricLinkAggregationPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_link_control_moid"></a> [link\_control\_moid](#input\_link\_control\_moid) | A reference to a fabricLinkControlPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_mac_aging_option"></a> [mac\_aging\_option](#input\_mac\_aging\_option) | his specifies one of the option to configure the MAC address aging time.<br> * Default - This option sets the default MAC address aging time to 14500 seconds for End Host mode.<br> * Custom - This option allows the the user to configure the MAC address aging time on the switch. For Switch Model UCS-FI-6454 or higher, the valid range is 120 to 918000 seconds and the switch will set the lower multiple of 5 of the given time.<br> * Never - This option disables the MAC address aging process and never allows the MAC address entries to get removed from the table. | `string` | `"Default"` | no |
| <a name="input_mac_aging_time"></a> [mac\_aging\_time](#input\_mac\_aging\_time) | Define the MAC address aging time in seconds.  Range is between 120 to 918000, in multiples of 5, when mac\_aging\_option is set to Custom. | `string` | `120` | no |
| <a name="input_multicast_moid"></a> [multicast\_moid](#input\_multicast\_moid) | Multicast Policy moid map. | `list(string)` | `[]` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Intersight Organization. | `string` | `"default"` | no |
| <a name="input_policy_bucket"></a> [policy\_bucket](#input\_policy\_bucket) | List of Policies to Assign to the Profile. | `list(map(string))` | `[]` | no |
| <a name="input_port_id_end"></a> [port\_id\_end](#input\_port\_id\_end) | Ending range of the Port Identifier. | `number` | `4` | no |
| <a name="input_port_id_start"></a> [port\_id\_start](#input\_port\_id\_start) | Starting range of the Port Identifier. | `number` | `1` | no |
| <a name="input_port_list"></a> [port\_list](#input\_port\_list) | List of Ports to assign to the Server Port Policy. | `list(number)` | <pre>[<br>  5,<br>  6,<br>  7,<br>  8,<br>  9,<br>  10,<br>  11,<br>  12,<br>  13,<br>  14,<br>  15,<br>  16,<br>  17,<br>  18<br>]</pre> | no |
| <a name="input_port_list_type"></a> [port\_list\_type](#input\_port\_list\_type) | Port list is the group of ports to assign to the policy.<br> * list - this is to assign a list of ports to the policy using the port\_list variable.<br> * range - will assign a rang of ports with the port\_start and port\_stop variables. | `string` | `"list"` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `list(map(string))` | `[]` | no |
| <a name="input_port_start"></a> [port\_start](#input\_port\_start) | Beginning port to assign to the Server Port Policy. | `number` | `5` | no |
| <a name="input_port_stop"></a> [port\_stop](#input\_port\_stop) | Ending port to assign to the Server Port Policy. | `number` | `18` | no |
| <a name="input_priority_flow_control_mode"></a> [priority\_flow\_control\_mode](#input\_priority\_flow\_control\_mode) | Configure PFC on a per-port basis to enable the no-drop behavior for the CoS as defined by the active network qos policy.<br> * auto - Enables the no-drop CoS values to be advertised by the DCBXP and negotiated with the peer.  A successful negotiation enables PFC on the no-drop CoS.  Any failures because of a mismatch in the capability of peers causes the PFC not to be enabled.<br> * on - Enables PFC on the local port regardless of the capability of the peers. | `string` | `"auto"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_querier_ip"></a> [querier\_ip](#input\_querier\_ip) | IP Address of the IGMP Querier to Assign to the VLAN through this Policy. | `string` | `""` | no |
| <a name="input_querier_state"></a> [querier\_state](#input\_querier\_state) | dministrative state of the IGMP Querier for the VLANs Assigned to this Policy. | `string` | `"Disabled"` | no |
| <a name="input_receive_direction"></a> [receive\_direction](#input\_receive\_direction) | Link-level Flow Control configured in the receive direction.<br> * Disabled - Admin configured Disabled State.<br> * Enabled - Admin configured Enabled State. | `string` | `"Disabled"` | no |
| <a name="input_san_uplink_pc_id"></a> [san\_uplink\_pc\_id](#input\_san\_uplink\_pc\_id) | Unique Identifier of the port-channel, local to this switch. | `string` | `1` | no |
| <a name="input_san_uplink_pc_ports"></a> [san\_uplink\_pc\_ports](#input\_san\_uplink\_pc\_ports) | List of Ports to Assign to the SAN Port-Channel Policy. | `set(string)` | `[]` | no |
| <a name="input_san_uplink_port_list"></a> [san\_uplink\_port\_list](#input\_san\_uplink\_port\_list) | List of Ports to Assign to the SAN Uplink Policy. | `set(string)` | <pre>[<br>  1,<br>  2<br>]</pre> | no |
| <a name="input_san_uplink_speed"></a> [san\_uplink\_speed](#input\_san\_uplink\_speed) | Admin configured speed for the port.<br> * Auto - Admin configurable speed AUTO ( default ).<br> * 8Gbps - Admin configurable speed 8Gbps.<br> * 16Gbps - Admin configurable speed 16Gbps.<br> * 32Gbps - Admin configurable speed 32Gbps. | `string` | `"Auto"` | no |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |
| <a name="input_send_direction"></a> [send\_direction](#input\_send\_direction) | Link-level Flow Control configured in the send direction.<br> * Disabled - Admin configured Disabled State.<br> * Enabled - Admin configured Enabled State. | `string` | `"Disabled"` | no |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the switch. | `number` | `1` | no |
| <a name="input_snooping_state"></a> [snooping\_state](#input\_snooping\_state) | Administrative State for Snoooping for the VLANs Assigned to this Policy. | `string` | `"Enabled"` | no |
| <a name="input_suspend_individual"></a> [suspend\_individual](#input\_suspend\_individual) | Flag tells the switch whether to suspend the port if it didn’t receive LACP PDU. | `bool` | `false` | no |
| <a name="input_switch_action"></a> [switch\_action](#input\_switch\_action) | Action to Perform on the Switch Profile Assignment.  Options are {Deploy\|No-op\|Unassign}. | `string` | `"No-op"` | no |
| <a name="input_switch_type"></a> [switch\_type](#input\_switch\_type) | Defines the type of the profile. Accepted values are instance or template. | `string` | `"instance"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Key/Value Pairs to Assign as Attributes to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_udld_admin_state"></a> [udld\_admin\_state](#input\_udld\_admin\_state) | Admin configured UDLD State for this port.<br> * Disabled - Admin configured Disabled State.<br> * Enabled - Admin configured Enabled State. | `string` | `"Enabled"` | no |
| <a name="input_udld_message_interval"></a> [udld\_message\_interval](#input\_udld\_message\_interval) | Configures the time between UDLD probe messages on ports that are in advertisement mode and arecurrently determined to be bidirectional.  Valid values are from 7 to 90 seconds. | `number` | `15` | no |
| <a name="input_udld_mode"></a> [udld\_mode](#input\_udld\_mode) | Admin configured UDLD Mode for this port.* normal - Admin configured 'normal' UDLD mode.* aggressive - Admin configured 'aggressive' UDLD mode. | `string` | `"normal"` | no |
| <a name="input_udld_recovery_action"></a> [udld\_recovery\_action](#input\_udld\_recovery\_action) | UDLD recovery when enabled, attempts to bring an UDLD error-disabled port out of reset.<br> * none - No action is taken when a port has been disabled.<br> * reset - The switch will attempt to bring a UDLD error-disabled port back online. | `string` | `"none"` | no |
| <a name="input_vlan_list"></a> [vlan\_list](#input\_vlan\_list) | n/a | `set(string)` | <pre>[<br>  1,<br>  2,<br>  3,<br>  4,<br>  5,<br>  6,<br>  7,<br>  8,<br>  9,<br>  10<br>]</pre> | no |
| <a name="input_vlan_list_type"></a> [vlan\_list\_type](#input\_vlan\_list\_type) | Options are {list\|range}.  You can add VLANs as a list [1, 2, 3] or as a 1-100.  This will tell the script which type you are using. | `string` | `"list"` | no |
| <a name="input_vlan_optimization"></a> [vlan\_optimization](#input\_vlan\_optimization) | To enable or disable the VLAN port count optimization. | `bool` | `false` | no |
| <a name="input_vlan_policy_moid"></a> [vlan\_policy\_moid](#input\_vlan\_policy\_moid) | VLAN Policy (Ethernet Network Policy) moid. | `string` | `""` | no |
| <a name="input_vlan_prefix"></a> [vlan\_prefix](#input\_vlan\_prefix) | Prefix Name for VLANs. | `string` | `"VLAN"` | no |
| <a name="input_vlan_range_start"></a> [vlan\_range\_start](#input\_vlan\_range\_start) | When vlan\_list\_type is set to range, this is the starting vlan id. | `number` | `1` | no |
| <a name="input_vlan_range_stop"></a> [vlan\_range\_stop](#input\_vlan\_range\_stop) | When vlan\_list\_type is set to range, this is the ending vlan id. | `number` | `2` | no |
| <a name="input_vsan_id"></a> [vsan\_id](#input\_vsan\_id) | Virtual San Identifier associated to the FC port. | `number` | `1` | no |
| <a name="input_vsan_list"></a> [vsan\_list](#input\_vsan\_list) | n/a | <pre>map(object({<br>    fcoe_vlan = number<br>    vsan_id   = number<br>  }))</pre> | `{}` | no |
| <a name="input_vsan_policy_moid"></a> [vsan\_policy\_moid](#input\_vsan\_policy\_moid) | VSAN Policy (Fibre-Channel Network Policy) moid. | `string` | `""` | no |
| <a name="input_vsan_prefix"></a> [vsan\_prefix](#input\_vsan\_prefix) | Prefix Name for VSANs. | `string` | `"VLAN"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_flow_control_example"></a> [flow\_control\_example](#output\_flow\_control\_example) | n/a |
| <a name="output_lan_uplink_example_a"></a> [lan\_uplink\_example\_a](#output\_lan\_uplink\_example\_a) | n/a |
| <a name="output_lan_uplink_example_b"></a> [lan\_uplink\_example\_b](#output\_lan\_uplink\_example\_b) | n/a |
| <a name="output_lan_uplink_port_channel_example_a"></a> [lan\_uplink\_port\_channel\_example\_a](#output\_lan\_uplink\_port\_channel\_example\_a) | n/a |
| <a name="output_lan_uplink_port_channel_example_b"></a> [lan\_uplink\_port\_channel\_example\_b](#output\_lan\_uplink\_port\_channel\_example\_b) | n/a |
| <a name="output_link_aggregation_example"></a> [link\_aggregation\_example](#output\_link\_aggregation\_example) | n/a |
| <a name="output_link_control_example"></a> [link\_control\_example](#output\_link\_control\_example) | n/a |
| <a name="output_multicast_example"></a> [multicast\_example](#output\_multicast\_example) | n/a |
| <a name="output_port_mode_example_a"></a> [port\_mode\_example\_a](#output\_port\_mode\_example\_a) | n/a |
| <a name="output_port_mode_example_b"></a> [port\_mode\_example\_b](#output\_port\_mode\_example\_b) | n/a |
| <a name="output_port_policy_example_a"></a> [port\_policy\_example\_a](#output\_port\_policy\_example\_a) | n/a |
| <a name="output_port_policy_example_b"></a> [port\_policy\_example\_b](#output\_port\_policy\_example\_b) | n/a |
| <a name="output_san_uplink_example_a"></a> [san\_uplink\_example\_a](#output\_san\_uplink\_example\_a) | n/a |
| <a name="output_san_uplink_example_b"></a> [san\_uplink\_example\_b](#output\_san\_uplink\_example\_b) | n/a |
| <a name="output_san_uplink_port_channel_example_a"></a> [san\_uplink\_port\_channel\_example\_a](#output\_san\_uplink\_port\_channel\_example\_a) | n/a |
| <a name="output_san_uplink_port_channel_example_b"></a> [san\_uplink\_port\_channel\_example\_b](#output\_san\_uplink\_port\_channel\_example\_b) | n/a |
| <a name="output_server_port_example_a1"></a> [server\_port\_example\_a1](#output\_server\_port\_example\_a1) | n/a |
| <a name="output_server_port_example_a2"></a> [server\_port\_example\_a2](#output\_server\_port\_example\_a2) | n/a |
| <a name="output_server_port_example_b1"></a> [server\_port\_example\_b1](#output\_server\_port\_example\_b1) | n/a |
| <a name="output_server_port_example_b2"></a> [server\_port\_example\_b2](#output\_server\_port\_example\_b2) | n/a |
| <a name="output_switch_cluster_example"></a> [switch\_cluster\_example](#output\_switch\_cluster\_example) | n/a |
| <a name="output_switch_control_example"></a> [switch\_control\_example](#output\_switch\_control\_example) | n/a |
| <a name="output_switch_profile_example_a"></a> [switch\_profile\_example\_a](#output\_switch\_profile\_example\_a) | n/a |
| <a name="output_switch_profile_example_b"></a> [switch\_profile\_example\_b](#output\_switch\_profile\_example\_b) | n/a |
| <a name="output_system_qos_example"></a> [system\_qos\_example](#output\_system\_qos\_example) | n/a |
| <a name="output_vlan_example_1"></a> [vlan\_example\_1](#output\_vlan\_example\_1) | n/a |
| <a name="output_vlan_example_2"></a> [vlan\_example\_2](#output\_vlan\_example\_2) | n/a |
| <a name="output_vlan_example_3"></a> [vlan\_example\_3](#output\_vlan\_example\_3) | n/a |
| <a name="output_vlan_policy_example"></a> [vlan\_policy\_example](#output\_vlan\_policy\_example) | n/a |
| <a name="output_vsan_example_a"></a> [vsan\_example\_a](#output\_vsan\_example\_a) | n/a |
| <a name="output_vsan_example_b"></a> [vsan\_example\_b](#output\_vsan\_example\_b) | n/a |
| <a name="output_vsan_policy_example_a"></a> [vsan\_policy\_example\_a](#output\_vsan\_policy\_example\_a) | n/a |
| <a name="output_vsan_policy_example_b"></a> [vsan\_policy\_example\_b](#output\_vsan\_policy\_example\_b) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

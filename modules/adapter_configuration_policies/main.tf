#_________________________________________________________________
#
# Intersight Adapter Configuration Policy
# GUI Location: Policies > Create Policy > Adapter Configuration
#_________________________________________________________________

resource "intersight_adapter_config_policy" "vic_adapter" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  settings {
    object_type = "adapter.AdapterConfig"
    slot_id     = var.slot_id
    dce_interface_settings = [
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.int0_fec_mode
        interface_id          = 0
        object_type           = "adapter.DceInterfaceSettings"
      },
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.int1_fec_mode
        interface_id          = 1
        object_type           = "adapter.DceInterfaceSettings"
      },
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.int2_fec_mode
        interface_id          = 2
        object_type           = "adapter.DceInterfaceSettings"
      },
      {
        additional_properties = ""
        class_id              = "adapter.DceInterfaceSettings"
        fec_mode              = var.int3_fec_mode
        interface_id          = 3
        object_type           = "adapter.DceInterfaceSettings"
      },
    ]
    eth_settings {
      lldp_enabled = var.lldp_enabled
      object_type  = "adapter.EthSettings"
    }
    fc_settings {
      object_type = "adapter.FcSettings"
      fip_enabled = var.fip_enabled
    }
    port_channel_settings {
      object_type = "adapter.PortChannelSettings"
      enabled     = var.portchannel_enabled
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}

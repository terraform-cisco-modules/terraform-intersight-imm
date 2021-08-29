# addons_policies - Intersight Add-ons Policy Terraform Module

## Usage

```hcl
module "addons" {

  source = "terraform-cisco-modules/imm/intersight//modules/addons_policies"

  # omitted...
}
```

This module will create a Add-ons Policy in Intersight.  This can be used to Addons to Kubernetes Clusters that require Add-ons.  

These resources are consumed

* [Add-ons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_addon_policy)

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
| [intersight_kubernetes_addon_policy.addons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_addon_policy) | resource |
| [intersight_kubernetes_addon_definition.addons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/kubernetes_addon_definition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addon"></a> [addon](#input\_addon) | The Addon to add to this Policy.  Options are:<br>* ccp-monitor<br>* kubernetes-dashboard. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_install_strategy"></a> [install\_strategy](#input\_install\_strategy) | Addon install strategy to determine whether an addon is installed if not present.<br>* Always - Attempt install if chart is not already installed.<br>* InstallOnly - Only install in green field. No action in case of failure or removal.<br>* NoAction - No install action performed.<br>* None - Unspecified install strategy. | `string` | `"Always"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_addon"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | Name for the helm release. | `string` | `""` | no |
| <a name="input_release_namespace"></a> [release\_namespace](#input\_release\_namespace) | Namespace for the helm release. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_upgrade_strategy"></a> [upgrade\_strategy](#input\_upgrade\_strategy) | Addon upgrade strategy to determine whether an addon configuration is overwritten on upgrade.<br>* AlwaysReinstall - Always remove older release and reinstall.<br>* None - Unspecified upgrade strategy.<br>* NoAction - This choice enables No upgrades to be performed.<br>* ReinstallOnFailure - Attempt upgrade first. Remove and install on upgrade failure.<br>* UpgradeOnly - Attempt upgrade if chart or overrides options change, no action on upgrade failure. | `string` | `"UpgradeOnly"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Add-ons Policy Managed Object ID (moid). |
| <a name="output_name"></a> [name](#output\_name) | Kubernetes Add-ons Policy Name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

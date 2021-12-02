# device_claim - Intersight Device Claim (Claim Target) Terraform Module

## Usage

```hcl
module "claim_target" {

  source = "terraform-cisco-modules/imm/intersight//modules/device_claim"

  # omitted...
}
```

This module will Claim Targets in Intersight.  

These resources are consumed

* [device claim](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/appliance_device_claim)

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
| [intersight_appliance_device_claim.claim_target](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/appliance_device_claim) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_moid"></a> [account\_moid](#input\_account\_moid) | Intersight Account moid. | `string` | n/a | yes |
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_device_id"></a> [device\_id](#input\_device\_id) | Device identifier of the endpoint device. | `string` | `""` | no |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | Hostname or IP address of the endpoint device the user wants to claim. | `string` | `""` | no |
| <a name="input_is_password_set"></a> [is\_password\_set](#input\_is\_password\_set) | Indicates whether the value of the 'password' property has been set. | `bool` | `false` | no |
| <a name="input_password"></a> [password](#input\_password) | Password to be used to login to the endpoint device. | `string` | `""` | no |
| <a name="input_platform_type"></a> [platform\_type](#input\_platform\_type) | Platform type of the endpoint device.  The device reported an empty or unrecognized platform type.<br>* APIC - An Application Policy Infrastructure Controller cluster.<br>* AppDynamics - An AppDynamics controller that monitors applications.<br>* CiscoCatalyst - A Cisco Catalyst networking switch device.<br>* DCNM - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center.<br>* IMC - A standalone UCS Server Integrated Management Controller.<br>* IMCM4 - A standalone UCS M4 Server.<br>* IMCM5 - A standalone UCS M5 server.<br>* IMCRack - A standalone UCS M6 and above server.<br>* IntersightAppliance - A Cisco Intersight Connected Virtual Appliance.<br>* IntersightAssist - A Cisco Intersight Assist.<br>* UCSIOM - An UCS Chassis IO module.<br>* HX - A HyperFlex storage controller.<br>* HyperFlexAP - A HyperFlex Application Platform.<br>* ServiceEngine - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications.<br>* UCSC890 - A standalone Cisco UCSC890 server.<br>* UCSD - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware.<br>* UCSFI - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM).<br>* UCSFIISM - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight.<br># 3rd Party Device Integrations<br>* AmazonWebService - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost.<br>* AmazonWebServiceBilling - A Amazon web service billing target to retrieve billing information stored in S3 bucket.<br>* CloudFoundry - An open source cloud platform on which developers can build, deploy, run and scale applications.<br>* DellCompellent - A Dell Compellent storage system.*HPE3Par- A HPE 3PAR storage system.<br>* Dynatrace - A software-intelligence monitoring platform that simplifies enterprise cloud complexity and accelerates digital transformation.<br>* EmcScaleIo - An EMC ScaleIO storage system.<br>* EmcVmax - An EMC VMAX storage system.<br>* EmcVplex - An EMC VPLEX storage system.<br>* EmcXtremIo - An EMC XtremIO storage system.<br>* HitachiVirtualStoragePlatform - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers.*IMCBlade- An Intersight managed UCS Blade Server.*TerraformCloud- A Terraform Cloud account.*TerraformAgent- A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent.*CustomTarget- An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.*HTTPEndpoint- An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.<br>* HPEOneView - A HPE Oneview management system that manages compute, storage, and networking.<br>* Kubernetes - A Kubernetes cluster that runs containerized applications.<br>* MicrosoftAzureApplicationInsights - A feature of Azure Monitor, is an extensible Application Performance Management service for developers and DevOps professionals to monitor their live applications.<br>* MicrosoftAzureEnterpriseAgreement - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs.<br>* MicrosoftAzureServicePrincipal - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions.<br>* MicrosoftHyperV - A Microsoft Hyper-V system that manages Virtual Machines.<br>* MicrosoftSqlServer - A Microsoft SQL database server.<br>* NetAppOntap - A NetApp ONTAP storage system.<br>* NetAppActiveIqUnifiedManager - A NetApp Active IQ Unified Manager.<br>* NutanixAcropolis - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform.<br>* OpenStack - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.<br>* PureStorageFlashArray - A Pure Storage FlashArray device.<br>* ReadHatOpenStack - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.<br>* RedHatEnterpriseVirtualization - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines.<br>* VmwareVcenter - A VMware vCenter device that manages Virtual Machines. | `string` | n/a | yes |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |
| <a name="input_security_token"></a> [security\_token](#input\_security\_token) | Device security token of the endpoint device. | `string` | `""` | no |
| <a name="input_username"></a> [username](#input\_username) | Username to log in to the endpoint device. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Device Claim/Claim Target Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

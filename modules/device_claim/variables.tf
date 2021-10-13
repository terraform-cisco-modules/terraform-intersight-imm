#____________________________________________________________
#
# Claim Target Variables Section.
#____________________________________________________________

variable "account_moid" {
  description = "Intersight Account moid."
  type        = string
}

variable "device_id" {
  default     = ""
  description = "Device identifier of the endpoint device."
  type        = string
}

variable "hostname" {
  default     = ""
  description = "Hostname or IP address of the endpoint device the user wants to claim."
  type        = string
}

variable "is_password_set" {
  default     = false
  description = "Indicates whether the value of the 'password' property has been set."
  type        = bool
}

variable "password" {
  default     = ""
  description = "Password to be used to login to the endpoint device."
  sensitive   = true
  type        = string
}

variable "platform_type" {
  description = <<-EOT
  Platform type of the endpoint device.  The device reported an empty or unrecognized platform type.
  * APIC - An Application Policy Infrastructure Controller cluster.
  * AppDynamics - An AppDynamics controller that monitors applications.
  * CiscoCatalyst - A Cisco Catalyst networking switch device.
  * DCNM - A Data Center Network Manager instance. Data Center Network Manager (DCNM) is the network management platform for all NX-OS-enabled deployments, spanning new fabric architectures, IP Fabric for Media, and storage networking deployments for the Cisco Nexus-powered data center.
  * IMC - A standalone UCS Server Integrated Management Controller.
  * IMCM4 - A standalone UCS M4 Server.
  * IMCM5 - A standalone UCS M5 server.
  * IMCRack - A standalone UCS M6 and above server.
  * IntersightAppliance - A Cisco Intersight Connected Virtual Appliance.
  * IntersightAssist - A Cisco Intersight Assist.
  * UCSIOM - An UCS Chassis IO module.
  * HX - A HyperFlex storage controller.
  * HyperFlexAP - A HyperFlex Application Platform.
  * ServiceEngine - Cisco Application Services Engine. Cisco Application Services Engine is a platform to deploy and manage applications.
  * UCSC890 - A standalone Cisco UCSC890 server.
  * UCSD - A UCS Director virtual appliance. Cisco UCS Director automates, orchestrates, and manages Cisco and third-party hardware.
  * UCSFI - A UCS Fabric Interconnect in HA or standalone mode, which is being managed by UCS Manager (UCSM).
  * UCSFIISM - A UCS Fabric Interconnect in HA or standalone mode, managed directly by Intersight.
  # 3rd Party Device Integrations
  * AmazonWebService - A Amazon web service target that discovers and monitors different services like EC2. It discovers entities like VMs, Volumes, regions etc. and monitors attributes like Mem, CPU, cost.
  * AmazonWebServiceBilling - A Amazon web service billing target to retrieve billing information stored in S3 bucket.
  * CloudFoundry - An open source cloud platform on which developers can build, deploy, run and scale applications.
  * DellCompellent - A Dell Compellent storage system.*HPE3Par- A HPE 3PAR storage system.
  * Dynatrace - A software-intelligence monitoring platform that simplifies enterprise cloud complexity and accelerates digital transformation.
  * EmcScaleIo - An EMC ScaleIO storage system.
  * EmcVmax - An EMC VMAX storage system.
  * EmcVplex - An EMC VPLEX storage system.
  * EmcXtremIo - An EMC XtremIO storage system.
  * HitachiVirtualStoragePlatform - A Hitachi Virtual Storage Platform also referred to as Hitachi VSP. It includes various storage systems designed for data centers.*IMCBlade- An Intersight managed UCS Blade Server.*TerraformCloud- A Terraform Cloud account.*TerraformAgent- A Terraform Cloud Agent that Intersight will deploy in datacenter. The agent will execute Terraform plan for Terraform Cloud workspace configured to use the agent.*CustomTarget- An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.*HTTPEndpoint- An external endpoint added as Target that can be accessed through its HTTP API interface in Intersight Orchestrator automation workflow.Standard HTTP authentication scheme supported: Basic.
  * HPEOneView - A HPE Oneview management system that manages compute, storage, and networking.
  * Kubernetes - A Kubernetes cluster that runs containerized applications.
  * MicrosoftAzureApplicationInsights - A feature of Azure Monitor, is an extensible Application Performance Management service for developers and DevOps professionals to monitor their live applications.
  * MicrosoftAzureEnterpriseAgreement - A Microsoft Azure Enterprise Agreement target that discovers cost, billing and RIs.
  * MicrosoftAzureServicePrincipal - A Microsoft Azure Service Principal target that discovers all the associated Azure subscriptions.
  * MicrosoftHyperV - A Microsoft Hyper-V system that manages Virtual Machines.
  * MicrosoftSqlServer - A Microsoft SQL database server.
  * NetAppOntap - A NetApp ONTAP storage system.
  * NetAppActiveIqUnifiedManager - A NetApp Active IQ Unified Manager.
  * NutanixAcropolis - A Nutanix Acropolis system that combines servers and storage into a distributed infrastructure platform.
  * OpenStack - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.
  * PureStorageFlashArray - A Pure Storage FlashArray device.
  * ReadHatOpenStack - An OpenStack target manages Virtual Machines, Physical Machines, Datacenters and Virtual Datacenters using different OpenStack services as administrative endpoints.
  * RedHatEnterpriseVirtualization - A Red Hat Enterprise Virtualization Hypervisor system that manages Virtual Machines.
  * VmwareVcenter - A VMware vCenter device that manages Virtual Machines.
  EOT
  type        = string
}

variable "security_token" {
  default     = ""
  description = "Device security token of the endpoint device."
  sensitive   = true
  type        = string
}

variable "username" {
  default     = ""
  description = "Username to log in to the endpoint device."
  type        = string
}

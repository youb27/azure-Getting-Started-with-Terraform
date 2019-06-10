/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */
provider "azurerm" {
  subscription_id 	= "${var.subscription_id}"
  client_id 		= "${var.client_id}"
  client_secret 	= "${var.client_secret}"
  tenant_id 		= "${var.tenant_id}"
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
  default = "d02f98cd-dbbd-43c2-90ad-a7654476189e"
}

variable "client_id" {
  description = "Enter Client ID for Application created in Azure AD"
   default = "1e763e4a-8fdc-4405-967c-6f778a0c726f"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
    default = "ejJix0j+2CIGHEWz3eC9hkYYqmpwr_Z:["
}

variable "tenant_id" {
  description = "Enter Tenant ID / Directory ID of your Azure AD. Run Get-AzureSubscription to know your Tenant ID"
     default =  "ea49408-4ebb-42fe-858d-a2eef9ed3b05"
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
  default = "West Europe"
}

variable "resource_group_name" {
  description = "Resource group name that will contain various resources"
 default = "Terraform-IteaAcademy"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
 default =  "192.168.0.0/16"
}

variable "subnet1_cidr" {
  description = "CIDR block for Frontend Subnet within a Virtual Network."
 default = "192.168.1.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block for Backend Subnet within a Virtual Network."
 default =  "192.168.2.0/24"
}

variable "vm_username" {
  description = "Enter admin username to SSH into Linux VM"
 default =  "iteaadmin"
}

variable "vm_password" {
  description = "Enter admin password to SSH into VM"
 default =  "$up3rSecur3P@ss"
}

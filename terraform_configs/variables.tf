/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */
provider "azurerm" {
  subscription_id 	= "${var.subscription_id}"
  client_id 		= "${var.client_id}"
  client_secret 	= "${var.client_secret}"
  tenant_id 		= "${var.tenant_id}"
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
  default = "a016bd38-890b-4a11-aa26-f9921bf16b0e"
}

variable "client_id" {
  description = "Enter Client ID for Application created in Azure AD"
   default = "c68d9f7e-a3a2-4ca5-8d10-5419b4f38950"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
    default = "/]eCTHsg88.=gbgXc5lyvF5*pVNjiyhl"
}

variable "tenant_id" {
  description = "Enter Tenant ID / Directory ID of your Azure AD. Run Get-AzureSubscription to know your Tenant ID"
     default =  "0c42074e-11ed-43fb-9040-274078614deb"
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
  default = "West Europe"
}

variable "resource_group_name" {
  description = "Resource group name that will contain various resources"
 default = "IteaAcademy"
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

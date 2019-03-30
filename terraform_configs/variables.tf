/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */
provider "azurerm" {
  subscription_id 	= "${var.subscription_id}"
  client_id 		= "${var.client_id}"
  client_secret 	= "${var.client_secret}"
  tenant_id 		= "${var.tenant_id}"
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
  default = "fcc376b0-25b4-438f-9d88-78eaba96ca03"
}

variable "client_id" {
  description = "Enter Client ID for Application created in Azure AD"
   default = "810794e9-3a6d-4ef8-bb59-4fcc92eb5b07"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
    default = "Nbs7HhnepanTB5LsvxwkxVDONTEpeW/loyWdIOBYEJU="
}

variable "tenant_id" {
  description = "Enter Tenant ID / Directory ID of your Azure AD. Run Get-AzureSubscription to know your Tenant ID"
     default =  "93e4a4f1-f77a-49b9-8a5e-c751ba51a393"
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
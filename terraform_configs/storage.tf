resource "azurerm_storage_account" "la_storage" {
  name 					= "iteadevopsterra32"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
  location 				= "${var.location}"
  account_type 			= "Standard_LRS"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags {
	group = "IteaAcademy"
  }
}

resource "azurerm_storage_container" "la_cont" {
  name 					= "vhds"
  resource_group_name 	= "${azurerm_resource_group.terraform_rg.name}"
  storage_account_name 	= "${azurerm_storage_account.la_storage.name}"
  container_access_type = "private"
}


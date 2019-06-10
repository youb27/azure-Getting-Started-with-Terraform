resource "azurerm_virtual_machine_extension" "cs_apache" {
  name 					= "custom_apache"
  location 				= "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"
  virtual_machine_name 	= "${azurerm_virtual_machine.la_web.name}"
  publisher 			= "Microsoft.OSTCExtensions"
  type 					= "CustomScriptForLinux"
  type_handler_version 	= "1.2"

  settings = <<SETTINGS
  {
	"fileUris": [
	"https://<AZURE-STORAGE-ACCOUNT-NAME>.blob.core.windows.net/<CONTAINER-NAME>/apache_php.sh"
	],
	"commandToExecute": "sh apache_php.sh"
  }
SETTINGS

  tags = {
	group = "IteaAcademy"
  }
}

resource "azurerm_virtual_machine_extension" "cs_mysql" {
  name 					= "custom_mysql"
  location 				= "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"
  virtual_machine_name 	= "${azurerm_virtual_machine.la_db.name}"
  publisher 			= "Microsoft.OSTCExtensions"
  type 					= "CustomScriptForLinux"
  type_handler_version 	= "1.2"

  settings = <<SETTINGS
  {
	"fileUris": [
	"https://<AZURE-STORAGE-ACCOUNT-NAME>.blob.core.windows.net/<CONTAINER-NAME>/mysql_install.sh"
	],
	"commandToExecute": "sh mysql_install.sh"
  }
SETTINGS

  tags = {
	group = "IteaAcademy"
  }
}

# resource "azurerm_resource_group" "rg" {
#   name     = var.rg_name
#   location = var.rg_location
# }

resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = "East US"
}

resource "azurerm_storage_account" "professor" {
  name                     = var.storage_account
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "class"
  }
}

resource "azurerm_container_registry" "acr" {
  name                = "azureclassmay2026"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = false
  
}
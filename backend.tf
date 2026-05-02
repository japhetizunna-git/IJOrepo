terraform {
  backend "azurerm" {
    resource_group_name  = "fizurg"                       
    storage_account_name = "fizustorage"                                 
    container_name       = "mycontainer"                                  
    key                  = "demo.terraform.tfstate"                   
  }
}

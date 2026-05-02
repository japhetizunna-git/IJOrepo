terraform {
  backend "azurerm" {
    resource_group_name  = "newrg"                       
    storage_account_name = "mybackendbucket"                                 
    container_name       = "mycontainer"                                  
    key                  = "demo.terraform.tfstate"                   
  }
}

resource_group_info = [
  {
    name     = "spokerg"
    location = "eastus"
    tags = {
      environment = "dev"
      project     = "dev-demo"
    }
  }
]

virtual_network_info = [
  {
    name                = "spokenvnet"
    resource_group_name = "spokerg"
    address_space       = ["10.0.0.0/16"]
    tags = {
      environment = "dev"
      project     = "dev-demo"
    }
  }
]

subnet_info = [

  {
    name                 = "spokesubnet1"
    virtual_network_name = "spokenvnet"
    address_space        = ["10.0.0.0/24"]
  },
  {
    name                 = "spokesubnet2"
    virtual_network_name = "spokenvnet"
    address_space        = ["10.0.1.0/24"]
  }
]


# windows_virtual_machine_info = [
#   {
#     name                 = "spokevm001"
#     resource_group_name  = "spokerg"
#     virtual_network_name = "spokenvnet"
#     subnet_name          = "spokesubnet1"
#     vm_size              = "Standard_B2s"
#     admin_username       = "azureadmin"
#     private_ip_address   = "10.0.0.4"
#     subscription_id        = string
#     gallery_resource_group = string
#     gallery_name           = string
#     image_definition       = string
#     image_version          = string

#     key_vault_info = {
#       name                = "vcloudlab001" #"devlab479"
#       secret_name         = "vmpassword"
#       resource_group_name = "vcloud-lab.com" #"dev-lab-01"
#     }
#     os_disk = {
#       caching              = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#     }
#     # source_image_reference = {
#     #   publisher = "MicrosoftWindowsServer"
#     #   offer     = "WindowsServer"
#     #   sku       = "2022-Datacenter"
#     #   version   = "latest"
#     # }
#     managed_disks = [
#       {
#         name                 = "spokevm001disk1"
#         storage_account_type = "Standard_LRS"
#         create_option        = "Empty"
#         disk_size_gb         = 128
#       },
#       {
#         name                 = "spokevm001disk2"
#         storage_account_type = "Standard_LRS"
#         create_option        = "Empty"
#         disk_size_gb         = 256
#       }
#     ]

#     tags = {
#       environment = "dev"
#       project     = "dev-demo"
#     }
#   },

#   {
#     name                 = "spokevm002"
#     resource_group_name  = "spokerg"
#     virtual_network_name = "spokenvnet"
#     subnet_name          = "spokesubnet2"
#     vm_size              = "Standard_B2s"
#     admin_username       = "azureadmin"
#     private_ip_address   = "10.0.1.4"
#     subscription_id        = string
#     gallery_resource_group = string
#     gallery_name           = string
#     image_definition       = string
#     image_version          = string

#     key_vault_info = {
#       name                = "vcloudlab001" #"devlab479"
#       secret_name         = "vmpassword"
#       resource_group_name = "vcloud-lab.com" #"dev-lab-01"
#     }
#     os_disk = {
#       caching              = "ReadWrite"
#       storage_account_type = "Standard_LRS"
#     }
#     # source_image_reference = {
#     #   publisher = "MicrosoftWindowsServer"
#     #   offer     = "WindowsServer"
#     #   sku       = "2022-Datacenter"
#     #   version   = "latest"
#     # }
#     managed_disks = [
#       {
#         name                 = "spokevm002disk1"
#         storage_account_type = "Standard_LRS"
#         create_option        = "Empty"
#         disk_size_gb         = 128
#       },
#       {
#         name                 = "spokevm002disk2"
#         storage_account_type = "Standard_LRS"
#         create_option        = "Empty"
#         disk_size_gb         = 256
#       }
#     ]
#     tags = {
#       environment = "dev"
#       project     = "dev-demo"
#     }
#   }
# ]

nsg_info = [{
  name                = "spokensg"
  location            = "eastus"
  resource_group_name = "spokerg"
  security_rules = [
    {
      name                       = "Allow-RDP"
      priority                   = 1001
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_ranges    = ["3389"]
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    {
      name                       = "Allow-WEB"
      priority                   = 1002
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_ranges    = ["80", "443"]
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
  association = [{
    subnet_name          = "spokesubnet1"
    virtual_network_name = "spokenvnet"
    },
    {
      subnet_name          = "spokesubnet2"
      virtual_network_name = "spokenvnet"
    }
  ]
  tags = {
    environment = "dev"
    project     = "dev-demo"
  }
}]


# sql_managed_instance_info = [{
#   sql_mi_name                      = "devsqlmi"
#   resource_group_name              = "spokerg"
#   location                         = "eastus"
#   sku_name                         = "GP_Gen5"
#   storage_account_type             = "Standard_LRS"
#   storage_size                     = 512
#   vcores                           = 4
#   vnet_name                        = "spokenvnet"
#   subnet_name                      = "spokesubnet1"
#   key_vault_name                   = "vcloudlab001"
#   admin_username                   = "sqladmin"
#   key_vault_admin_pass_secret_name = "sqladminpassword"
#   license_type                     = "LicenseIncluded"
#   collation                        = "SQL_Latin1_General_CP1_CI_AS"
#   tags = {
#     environment = "dev"
#     project     = "dev-demo"
#   }
# }]
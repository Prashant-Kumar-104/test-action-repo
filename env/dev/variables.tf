variable "resource_groups" {
  description = "A map of resource groups to create"
  type = map(object({
    location = string
  }))
  # default = {
  #   "dev-rg1" = { location = "East US" },
  #   "dev-rg2" = { location = "West US" }
  # }
}



# Define the provider source

terraform {
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
  }
  required_version = ">= 0.14"
}

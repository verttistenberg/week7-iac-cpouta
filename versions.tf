terraform {
  required_version = ">= 1.6.0"

  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 3.0"
    }
  }
}

# Credentials are read from clouds.yaml in this folder.
# "openstack" must match the name under "clouds:" in that file.
provider "openstack" {
  cloud = "openstack"
}
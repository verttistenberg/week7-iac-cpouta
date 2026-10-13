# Week 7: Web server on cPouta with OpenTofu

Creates a key pair, security group, network port, Ubuntu 24.04 VM and floating IP
on CSC cPouta. cloud-init installs Apache and writes a custom index.html.

## Requirements
- OpenTofu >= 1.6 or Terraform
- A cPouta project and an Application Credential (`clouds.yaml` in this folder;
  the cloud name must match `provider "openstack"` in `versions.tf`)
- An SSH key pair (default public key path: `~/.ssh/week7_ed25519.pub`)

## Usage
1. Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in your existing values
2. Run:
   tofu init
   tofu validate
   tofu plan
   tofu apply
3. Wait 2-3 minutes, then open the `url` output in a browser.

## Cleanup
```
tofu destroy
```

Never commit `clouds.yaml`, `terraform.tfvars` or `*.tfstate`.
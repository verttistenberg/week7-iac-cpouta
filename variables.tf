variable "project_network" {
  description = "Name of the existing project network in cPouta"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "Source address allowed to SSH to the VM in CIDR form"
  type        = string

  validation {
    condition     = can(cidrhost(var.ssh_allowed_cidr, 0))
    error_message = "ssh_allowed_cidr must be a valid CIDR block including the prefix length, e.g. 203.0.113.45/32 (a plain IP without /32 is not accepted)."
  }

  validation {
    condition     = var.ssh_allowed_cidr != "0.0.0.0/0"
    error_message = "ssh_allowed_cidr must not be 0.0.0.0/0, which would open SSH to the whole internet."
  }
}

variable "student_name" {
  description = "Your name shown on the web page"
  type        = string
}

variable "page_message" {
  description = "Message shown on the web page"
  type        = string
  default     = "Terve!"
}

variable "name_prefix" {
  description = "Prefix for the names of all resources created by this code"
  type        = string
  default     = "week7"
}

variable "image_name" {
  description = "Name of the OS image"
  type        = string
  default     = "Ubuntu-24.04"
}

variable "flavor_name" {
  description = "Name of the VM flavor"
  type        = string
  default     = "standard.large"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH PUBLIC key that is uploaded to cPouta"
  type        = string
  default     = "~/.ssh/week7_ed25519.pub"
}
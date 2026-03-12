terraform {
  # Locks the Terraform CLI version to 1.5.0 or newer
  required_version = ">= 1.5.0" 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Uses the latest 5.x version, but prevents jumping to a breaking 6.0 release
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.10"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.22"
    }
  }
}
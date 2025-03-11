terraform {
  required_version = ">= 1.1.9, < 2.0.0"

  required_providers {
    onepassword = {
      source  = "1Password/onepassword"
      version = "< 3.0.0"
    }
  }
}

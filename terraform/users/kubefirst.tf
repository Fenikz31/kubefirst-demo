terraform {
  backend "s3" {
    bucket   = "kubefirst-state-store"
    key      = "terraform/users/terraform.tfstate"
    endpoints = {
      s3 = "https://minio.k8s.dev.io"
    }

    access_key                  = "k-ray"
    secret_key                  = "feedkraystars"
    region                      = "main"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    use_path_style            = true
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.17.0"
    }
  }
}

# todo add organization support
# data "github_team" "admins" {
#   slug = "admins"
# }

# data "github_team" "developers" {
#   slug = "developers"
# }

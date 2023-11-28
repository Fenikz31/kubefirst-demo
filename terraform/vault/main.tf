provider "vault" {
  skip_tls_verify = "true"
}

terraform {
  backend "s3" {
    bucket   = "kubefirst-state-store"
    key      = "terraform/vault/terraform.tfstate"
    endpoints = {
      s3 = "https://minio.k8s.dev.io"
    }

    access_key                  = "k-ray"
    secret_key                  = "feedkraystars"
    region                      = "us-k3d-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id = true
    use_path_style            = true
  }
}

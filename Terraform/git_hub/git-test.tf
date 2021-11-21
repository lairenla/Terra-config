terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.18.0"
    }
  }
}

provider "github" {
  # Configuration options
  token = "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"
}

resource "github_repository" "Terraform_test" {
  name        = "example-imobi"
  description = "My awesome codebase"

  visibility = "public"

    template {
    owner      = "github"
    repository = "terraform-module-template"
  }

}
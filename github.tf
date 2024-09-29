terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

resource "github_repository" "github_repo_terraform" {
  name        = "github_repo_terraform"
  description = "My github repo terraform example"

  allow_merge_commit = true
  allow_rebase_merge = true
  allow_squash_merge = true

  visibility = "public"
}

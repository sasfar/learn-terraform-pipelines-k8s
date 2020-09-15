terraform {
  backend "remote" {
    organization = "SAASGlobal"

    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
  #credentials = "${file("${var.GCLOUD_KEYFILE_JSON}")}"
}

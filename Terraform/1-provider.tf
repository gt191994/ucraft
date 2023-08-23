terraform {
    backend "gcs" {
      bucket = "ucraft-state"
      prefix = "terraform.tfstate"
      credentials = "ucraft-396617-d833fb51fc86.json"
    }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = "${file("ucraft-396617-d833fb51fc86.json")}"
  project     = "ucraft-396617"
  region      = "us-central1"
  zone        = "us-central1-c"
}
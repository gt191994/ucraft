resource "google_compute_subnetwork" "private" {
  name                     = "private"
  ip_cidr_range            = "10.10.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.ucraft-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "vm" {
  name                     = "vm"
  ip_cidr_range            = "10.11.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.ucraft-vpc.id
  private_ip_google_access = true
}
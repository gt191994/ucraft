resource "google_compute_instance" "nfs01" {
  name         = "nfs01"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = "vm"
    access_config {
      
    }
  }
}

resource "google_compute_instance" "sql01" {
  name         = "sql01"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "ubuntu-2204-lts"
    }
  }

  network_interface {
    subnetwork = "vm"
    access_config {
      
    }
  }
}
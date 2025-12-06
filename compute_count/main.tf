
resource "google_compute_instance" "tf_server" {
  count = var.vm_count  
  name             = "server-${count.index}"
  zone             = "asia-south1-a"
  machine_type     = "e2-medium"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
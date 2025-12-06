
resource "google_compute_instance" "tf_server" {
  for_each = var.map_data
  name             = each.key
  zone             = each.value.zone
  machine_type     = each.value.machine_type

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
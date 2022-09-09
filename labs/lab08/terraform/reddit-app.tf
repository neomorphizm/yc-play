resource "yandex_compute_instance" "default" {
  name        = "reddit-app"
  platform_id = "standard-v2"
  // zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 0.5
  }

  boot_disk {
    initialize_params {
      image_id = "image_id"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.foo.id}"
  }

  metadata = {
    foo      = "bar"
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

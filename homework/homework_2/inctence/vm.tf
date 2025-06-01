# Deploy several copies

resource "yandex_compute_instance" "vm" {
  for_each = var.instances
    name        = each.key
    platform_id = "standard-v1"
    zone     = "ru-central1-b"
    folder_id = var.folder_id
  
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = each.value.ami
    }
  }

  network_interface {
    subnet_id      = "e2lphgn8145om2ve47ph"
    nat            = true
  }


# Тут поменя имя
  metadata = {
    ssh-keys  = "mpazenko:${file("~/.ssh/id_rsa.pub")}"
  }
}
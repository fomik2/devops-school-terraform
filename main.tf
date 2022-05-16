terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = "b1g7ol9tq3jq1sqgllmb"
  zone      = "ru-central1-a"
}



data "yandex_vpc_network" "my_yandex_vpc" {
      network_id = "enpbtb38e2kjdbrfpnt8"
}


data "yandex_vpc_subnet" "admin" {
  subnet_id = "b0ck3m0p5en3et085l9l"
}
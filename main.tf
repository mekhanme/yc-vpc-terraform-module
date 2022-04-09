// NOTE: https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network
//       https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet

resource "yandex_vpc_network" "net" {
  name        = var.network.name
  folder_id   = var.folder_id
}

resource "yandex_vpc_subnet" "subnet" {
  for_each          = var.subnets
  name              = each.value.name
  v4_cidr_blocks    = [each.value.block]
  zone              = each.value.zone
  network_id        = yandex_vpc_network.net.id

  depends_on   = [
    yandex_vpc_network.net
  ]
}

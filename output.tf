output "network_id" {
  value = yandex_vpc_network.net.id
}

output "network_name" {
  value = yandex_vpc_network.net.name
}

output "subnet-name" {
  value = {
    for k, subnet in yandex_vpc_subnet.subnet : k => subnet.name
  }
}

output "subnet-zone" {
  value = {
    for k, subnet in yandex_vpc_subnet.subnet : k => subnet.zone
  }
}

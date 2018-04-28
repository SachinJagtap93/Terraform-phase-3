provider "opentelekomcloud" {
  user_name   = "lizhonghua"
  domain_name = "OTC00000000001000010501"
  password    = "slob@1234"
  auth_url    = "https://iam.eu-de.otc.t-systems.com/v3"
  region      = "eu-de"
  tenant_id   = "87a56a48977e42068f70ad3280c50f0e"
}


=========RouteId=====================
data "opentelekomcloud_vpc_route_ids_v2" "vpc" {
  vpc_id = "93e94d8e-31a6-4c22-bdf7-8b23c7b67329"
}

output "vpc_data" {
  value = "${data.opentelekomcloud_vpc_route_ids_v2.vpc.id}"
}

========Route============================

data "opentelekomcloud_vpc_route_v2" "vpc" {
  vpc_id = "93e94d8e-31a6-4c22-bdf7-8b23c7b67329"
}

output "vpc_data" {
  value = "${data.opentelekomcloud_vpc_route_v2.vpc.id}"
}

==========Resource========================

resource "opentelekomcloud_vpc_route_v2" "vpc_route_2" {
  type       = "peering"
  nexthop       = "7b0cf30f-b5c4-4cc2-979c-e1a964350467"
  destination = "192.168.0.0/16"
  vpc_id = "3127e30b-5f8e-42d1-a3cc-fdadf412c5bf"
}
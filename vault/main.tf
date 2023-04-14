provider "vault" {
  address = "http://127.0.0.1:8200"
  token   = "hvs.aoSJAdPuxVxd88o2G5vI18iI"
}

data "vault_generic_secret" "phone_number" {
  path = "secret/app"
}

output "phone_number" {
  value = data.vault_generic_secret.phone_number.data["phone_number"]
  sensitive = true
}
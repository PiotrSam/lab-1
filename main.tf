variable "server-name" {
  type = string
  description = "Nazwa serwera"
}

output "out" {
  value = var.server-name
}

variable "server-name" {
  type = string
  description = "Nazwa serwera"
}

locals {
  minNumberofSerwer = 1
  maxNumberofSErwer = 10
}

variable "numbers-of-dervers" {
  type = number
  description = "Wymagana liczba serwerów"
  validation {
    condition = var.numbers-of-dervers >= local.minNumberofSerwer && var.numbers-of-dervers <= local.maxNumberofSErwer
    error_message = "Not supported numbers of srvers (${local.minNumberofSerwer}-${local.maxNumberofSErwer})"
  }
}

output "out" {
  value = var.server-name
}

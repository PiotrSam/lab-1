variable "server-name" {
  type = string
  description = "Nazwa serwera"
}

locals {
  minNumberofSerwer = 1
  maxNumberofSErwer = 10
}

locals {
  countOfItems = {
    disks = 13
    servers = 3
  }
}

variable "numbers-of-dervers" {
  type = number
  description = "Wymagana liczba serwerów"
  default = 2
  validation {
    condition = var.numbers-of-dervers >= local.minNumberofSerwer && var.numbers-of-dervers <= local.maxNumberofSErwer
    error_message = "Not supported numbers of srvers (${local.minNumberofSerwer}-${local.maxNumberofSErwer})"
  }
}

variable "list-of-names" {
  type = list(string)
  default = [ "a1", "b2", "b3" ]
}

output "result" {
  value = "${var.server-name} x ${var.numbers-of-dervers}"
}

output "list-of-names" {
  value = "${join(", ",var.list-of-names)}"
}
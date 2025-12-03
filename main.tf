variable "a" {
  type = number
}

variable "b" {
  type = number
}

variable "sign" {
  type = string
}

locals {
  dzialania = {
   "+" = var.a + var.b
   "-" = var.a - var.b
   "*" = var.a * var.b
   "/" = var.b == 0 ? "Błąd" : var.a / var.b
  }
}

output "wynik" {
  value = lookup(local.dzialania,var.sign,"błąd inny")
}
variable "op_url" {
  type = string
}

variable "vault_id" {
  type = string
}

provider "onepassword" {
  url = var.op_url
}


resource "onepassword_item" "test" {
  vault = var.vault_id

  title    = "Database Test"
  category = "database"
  username = "hello"
  password = "1234"
  database = ""
  port     = "3306"
}

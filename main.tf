resource "terraform_data" "name" {
  input = "17.0.0"
}

output "version" {
  value = terraform_data.name.input
}


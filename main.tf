resource "terraform_data" "name" {
  input = "14.0.0"
}

output "version" {
  value = terraform_data.name.input
}

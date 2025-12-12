resource "terraform_data" "name" {
  input = "11.0.0"
}

output "version" {
  value = terraform_data.name.input
}
resource "terraform_data" "name" {
  input = "13.0.0"
}

output "version" {
  value = terraform_data2.name.input
}

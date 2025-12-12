resource "terraform_data" "name" {
  input = "test3"
}

output "example" {
  value = terraform_data.name.output
}
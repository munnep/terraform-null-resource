resource "terraform_data" "name" {
  input = "test2"
}

output "example" {
  value = terraform_data.name.output
}
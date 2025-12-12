resource "terraform_data" "name" {
  input = "test5"
}

output "example" {
  value = terraform_data.name.output
}
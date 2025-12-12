resource "terraform_data" "name" {
  input = "test7"
}

output "example" {
  value = terraform_data.name.output
}
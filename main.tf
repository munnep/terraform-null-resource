resource "terraform_data" "name" {
  input = "test1"
}

output "example" {
  value = terraform_data.name.output
}
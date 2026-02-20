resource "terraform_data" "name" {
  input = "17.0.0"
}

output "version" {
  value = terraform_data.fail_on_apply_local_exec.input
}


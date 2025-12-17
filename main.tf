resource "terraform_data" "name" {
  input = "16.0.0"
}

output "version" {
  value = terraform_data.fail_on_apply_local_exec.input
}

resource "terraform_data" "fail_on_apply_local_exec" {
  input = "16.0.0"
  provisioner "local-exec" {
    command = "exit 1"  # This will fail during apply
  }
}

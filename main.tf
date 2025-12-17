resource "terraform_data" "name" {
  input = "15.0.0"
}

output "version" {
  value = terraform_data.name.input
}

resource "terraform_data" "fail_on_apply_local_exec" {
  provisioner "local-exec" {
    command = "exit 1"  # This will fail during apply
  }
}

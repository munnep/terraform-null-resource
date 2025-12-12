resource "terraform_data" "name" {
  input = "test7"
}

output "example" {
  value = terraform_data.name.output
}

data "external" "slow_delay" {
  program = ["bash", "-c", <<EOT
    sleep 3
    echo '{ "result": "done" }'
EOT
  ]
}

output "delay_result" {
  value = data.external.slow_delay2.result
}
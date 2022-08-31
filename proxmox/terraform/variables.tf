variable "pm_api_url" {
  default = "https://pvemr01.hennings.cc:8006/api2/json"
}
/*
variable "pm_user" {
  default = "terraform-prov@pve"
}

variable "pm_password" {
}
*/
variable "ssh_key_file" {
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBVUKuLcP17j21av7tH5q2MP00wj6J6Gzu9Jc7qFG0T7 chennings"
}

variable "clone_name" {
  default = "ubuntu-22.04-server-cloudimg-amd64-310822-template"
}


variable "k8s_nodes" {
  type = map(any)

}



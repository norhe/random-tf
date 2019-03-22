terraform {
  backend "remote" {
    organization = "Synaptic_Racing"
    hostname = "ptfe"

    workspaces{
      name = "random"
    }
  }
}

resource "random_string" "password" {
  length = 16
  special = true
  override_special = "/@\" "
}


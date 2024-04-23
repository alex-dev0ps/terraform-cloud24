data "terraform_remote_state" "vpc" {
  config = {
    organization = "luzanov"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.terraform_remote_state.vpc.outputs
}
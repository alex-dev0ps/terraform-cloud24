data "tfe_outputs" "vpc" {
  config = {
    organization = "luzanov"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.tfe_outputs.vpc.outputs.vpc_id
}
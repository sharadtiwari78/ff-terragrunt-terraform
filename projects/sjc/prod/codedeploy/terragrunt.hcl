terraform {
  source = "../../../../modules/codedeploy"
}

inputs = {
  env       = "sjc-prod"
  ec2_value = "ff-saintjohn"
}

include "root" {
  path = find_in_parent_folders()
}
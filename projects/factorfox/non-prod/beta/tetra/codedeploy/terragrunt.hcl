terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "tetra-beta"
  ec2_value = "ff-server-tetracapital"
}

include "root" {
  path = find_in_parent_folders()
}
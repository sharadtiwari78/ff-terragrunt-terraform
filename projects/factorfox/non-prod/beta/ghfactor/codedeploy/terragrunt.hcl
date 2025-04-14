terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "ghfactor-beta"
  ec2_value = "ff-ghfactor"
}

include "root" {
  path = find_in_parent_folders()
}
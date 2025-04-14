terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "or-beta"
  ec2_value = "ff-openroads"
}

include "root" {
  path = find_in_parent_folders()
}
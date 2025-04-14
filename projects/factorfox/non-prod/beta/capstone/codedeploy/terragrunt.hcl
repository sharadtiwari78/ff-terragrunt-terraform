terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "capstone-beta"
  ec2_value = "ff-server-capstone"
}

include "root" {
  path = find_in_parent_folders()
}
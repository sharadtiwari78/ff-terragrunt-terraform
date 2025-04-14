terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "fcs-beta"
  ec2_value = "ff-fcs"
}

include "root" {
  path = find_in_parent_folders()
}
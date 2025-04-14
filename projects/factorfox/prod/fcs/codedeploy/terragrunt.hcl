terraform {
  source = "../../../../../modules/codedeploy"
}

inputs = {
  env       = "fcs-prod"
  ec2_value = "ff-fcs"
}

include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "../../../../../modules/codedeploy"
}

inputs = {
  env       = "ltc-prod"
  ec2_value = "ff-server-ltc"
}

include "root" {
  path = find_in_parent_folders()
}
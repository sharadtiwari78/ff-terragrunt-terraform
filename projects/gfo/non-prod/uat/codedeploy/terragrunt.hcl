terraform {
  source = "../../../../../modules/codedeploy"
}

inputs = {
  env       = "gfo-uat"
  ec2_value = "ff-server-bancopopular"
}

include "root" {
  path = find_in_parent_folders()
}
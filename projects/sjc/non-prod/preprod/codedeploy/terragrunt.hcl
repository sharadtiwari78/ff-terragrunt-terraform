terraform {
  source = "../../../../../modules/codedeploy"
}

inputs = {
  env       = "sjc-preprod"
  ec2_value = "ff-server-beta-01"
}

include "root" {
  path = find_in_parent_folders()
}
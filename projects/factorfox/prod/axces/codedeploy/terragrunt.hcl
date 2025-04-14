terraform {
  source = "../../../../../modules/codedeploy"
}

inputs = {
  env       = "axces-prod"
  ec2_value = "ff-server-axces"
}

include "root" {
  path = find_in_parent_folders()
}
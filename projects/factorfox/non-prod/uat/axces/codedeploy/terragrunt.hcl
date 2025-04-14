terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "axces-uat"
  ec2_value = "ff-server-axces"
}

include "root" {
  path = find_in_parent_folders()
}
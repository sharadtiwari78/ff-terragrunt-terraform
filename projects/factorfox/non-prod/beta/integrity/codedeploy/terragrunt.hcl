terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "integrity-beta"
  ec2_value = "ff-server-integrity"
}

include "root" {
  path = find_in_parent_folders()
}
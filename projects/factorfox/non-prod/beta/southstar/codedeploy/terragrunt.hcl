terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "southstar-beta"
  ec2_value = "ff-server-southstar"
}

include "root" {
  path = find_in_parent_folders()
}
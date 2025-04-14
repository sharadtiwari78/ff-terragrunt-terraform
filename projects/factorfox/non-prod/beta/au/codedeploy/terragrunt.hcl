terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "au-beta"
  ec2_value = "ff-shared-us-nimbus"
}

include "root" {
  path = find_in_parent_folders()
}
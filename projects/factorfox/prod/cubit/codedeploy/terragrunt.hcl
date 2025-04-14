terraform {
  source = "../../../../../modules/codedeploy"
}

inputs = {
  env       = "cubit-prod"
  ec2_value = "ff-server-cubit"
}

include "root" {
  path = find_in_parent_folders()
}
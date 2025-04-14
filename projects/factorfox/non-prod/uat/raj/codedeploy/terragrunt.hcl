terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "raj-uat"
  ec2_value = "ff-server-parikh"
}

include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "tbs-okc-beta"
  ec2_value = "ff-server-okc"
}

include "root" {
  path = find_in_parent_folders()
}
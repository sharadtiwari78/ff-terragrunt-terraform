terraform {
  source = "../../../../../../modules/codedeploy"
}

inputs = {
  env       = "if-beta"
  ec2_value = "ff-server-integrafunding"
}

include "root" {
  path = find_in_parent_folders()
}
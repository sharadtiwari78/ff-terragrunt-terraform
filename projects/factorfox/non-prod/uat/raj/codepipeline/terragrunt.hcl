terraform {
  source = "../../../../../../modules/codepipeline"
}

inputs = {
  env                   = "raj-uat"
  branch_name           = "raj-beta"
  build_enabled         = true
  pipe_auto_run         = false 
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../../_env/codepipeline.hcl"
}
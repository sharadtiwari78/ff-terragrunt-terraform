terraform {
  source = "../../../../../../modules/codepipeline"
}

inputs = {
  env                   = "or-beta"
  branch_name           = "or-beta"
  build_enabled         = true
  pipe_auto_run         = true
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../../_env/codepipeline.hcl"
}
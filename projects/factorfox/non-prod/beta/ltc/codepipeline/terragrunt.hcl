terraform {
  source = "../../../../../../modules/codepipeline"
}

inputs = {
  env                   = "ltc-beta"
  branch_name           = "ltc-beta"
  build_enabled         = true
  pipe_auto_run         = true
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../../_env/codepipeline.hcl"
}
terraform {
  source = "../../../../../modules/codepipeline"
}

inputs = {
  env                   = "fcs-prod"
  branch_name           = "fcs-beta"
  build_enabled         = false
  pipe_auto_run         = false
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../_env/codepipeline-without-build.hcl"
}

include "root" {
  path = find_in_parent_folders()
}
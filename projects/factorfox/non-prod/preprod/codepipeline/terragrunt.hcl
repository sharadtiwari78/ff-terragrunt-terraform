terraform {
  source = "../../../../../modules/codepipeline"
}

inputs = {
  env                   = "factorfox-preprod"
  branch_name           = "preprod"
  build_enabled         = true
  pipe_auto_run         = false
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../_env/codepipeline.hcl"
}

include "root" {
  path = find_in_parent_folders()
}
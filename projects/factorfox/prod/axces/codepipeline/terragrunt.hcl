inputs = {
  env                   = "axces-prod"
  branch_name           = "axces-beta"
  build_enabled         = false
  pipe_auto_run         = false
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../_env/codepipeline-without-build.hcl"
}


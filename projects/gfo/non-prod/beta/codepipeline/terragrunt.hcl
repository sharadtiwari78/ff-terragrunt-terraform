inputs = {
  env                   = "gfo-beta"
  branch_name           = "dev"
  build_enabled         = true
  pipe_auto_run         = true
}

include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../../../_env/codepipeline.hcl"
}
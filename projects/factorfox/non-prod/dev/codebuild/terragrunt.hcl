terraform {
  source = "../../../../../modules/codebuild"
}

inputs = {
  env                = "dev"
  build_project_name = "demo-build"
}

include "root" {
  path = find_in_parent_folders()
}
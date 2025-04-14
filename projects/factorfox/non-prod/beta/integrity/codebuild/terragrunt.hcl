terraform {
  source = "../../../../../../modules/codebuild"
}

inputs = {
  env                = "integrity-beta"
  build_project_name = "build-project"
}

include "root" {
  path = find_in_parent_folders()
}
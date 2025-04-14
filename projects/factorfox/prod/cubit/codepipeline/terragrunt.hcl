terraform {
  source = "../../../../../modules/codepipeline"
}

inputs = {
  env                   = "cubit-prod"
  branch_name           = "cubit-beta"
  codepipeline_name     = "pipeline"
  build_enabled         = false
  pipe_auto_run         = false
  repository_name       = dependency.codecommit.outputs.repository_name
  application_name      = dependency.codedeploy.outputs.deployment_application_name
  deployment_group_name = dependency.codedeploy.outputs.deployment_group_name
}

dependency "codedeploy" {
  config_path = "../codedeploy" 
  mock_outputs = {
    deployment_application_name = "demo-application"
    deployment_group_name  = "demo-dg"
  }
  mock_outputs_allowed_terraform_commands = ["validate", "plan", "refresh"] 
}

dependency "codecommit" {
  config_path = "../codecommit"
  mock_outputs = {
    repository_name  = "demo-repo"  
  }
  mock_outputs_allowed_terraform_commands = ["validate", "plan", "refresh"] 
}

include "root" {
  path = find_in_parent_folders()
}
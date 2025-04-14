terraform {
  source = "../../../../../modules/codepipeline"
}

inputs = {
  env                   = "dev"
  branch_name           = "main"
  build_enabled         = true
  pipe_auto_run         = true
  ec2_value             = "ff-server-beta-01"
  codepipeline_name     = "factorfox-pipeline"
  repository_name       = dependency.codecommit.outputs.repository_name
  build_project_name    = dependency.codebuild.outputs.build_project_name
  application_name      = dependency.codedeploy.outputs.deployment_application_name
  deployment_group_name = dependency.codedeploy.outputs.deployment_group_name

}

dependency "codebuild" {
  config_path = "../codebuild"  
}

dependency "codedeploy" {
  config_path = "../codedeploy" 
}

dependency "codecommit" {
  config_path = "../codecommit"
}

include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "../../../../../modules/cloudwatch"
}

dependency "codepipeline" {
  config_path = "../codepipeline"
}

inputs = {
  env                 = "dev"
  name                = "pipeline-rule"
  schedule_expression = "cron(0 0-23/1 ? * MON-FRI *)"
  codepipeline_arn    = dependency.codepipeline.outputs.codepipeline_arn
}

include "root" {
  path = find_in_parent_folders()
}
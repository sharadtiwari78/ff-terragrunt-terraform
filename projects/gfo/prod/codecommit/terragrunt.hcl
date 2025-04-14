terraform {
  source = "../../../../modules/codecommit"
}

inputs = {
  repository_name = "GFO_Repository"
}

include "root" {
  path = find_in_parent_folders()
}
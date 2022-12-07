locals {
  namespaced_service_name = "${var.service_name}"

  lambdas_path = "${path.module}/../lambdas"
  layers_path  = "${local.lambdas_path}/layers"

  lambdas = {
    get = {
      description = "Get students"
      memory      = 256
      timeout     = 10
    }
    delete = {
      description = "Delete given students"
      memory      = 128
      timeout     = 5
    }
    put = {
      description = "Update given students"
      memory      = 128
      timeout     = 5
    }
    post = {
      description = "Create new students"
      memory      = 128
      timeout     = 5
    }
  }
}

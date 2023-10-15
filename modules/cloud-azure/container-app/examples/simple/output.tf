output "container_app_output" {
  value = {
    app_name             = module.my_container_app.app_name
    app_location         = module.my_container_app.app_location
    app_environment_name = module.my_container_app.app_environment_name
    app_container_name   = module.my_container_app.app_container_name
    app_container_image  = module.my_container_app.app_container_image
    app_container_cpu    = module.my_container_app.app_container_cpu
    app_container_memory = module.my_container_app.app_container_memory
    log_analytics        = module.my_container_app.log_analytics
    resource_group_name  = module.my_container_app.resource_group_name
  }
}

output "user" {
  description = "Outputs all attributes of resource_type."
  value = {
    for user in keys(azuread_user.user) :
    user => {
      for key, value in azuread_user.user[user] :
      key => value
    }
  }
}

output "group" {
  description = "Outputs all attributes of resource_type."
  value = {
    for group in keys(azuread_group.group) :
    group => {
      for key, value in azuread_group.group[group] :
      key => value
    }
  }
}

output "group_member" {
  description = "Outputs all attributes of resource_type."
  value = {
    for group_member in keys(azuread_group_member.group_member) :
    group_member => {
      for key, value in azuread_group_member.group_member[group_member] :
      key => value
    }
  }
}

output "application" {
  description = "Outputs all attributes of resource_type."
  value = {
    for application in keys(azuread_application.application) :
    application => {
      for key, value in azuread_application.application[application] :
      key => value
    }
  }
}

output "application_password" {
  description = "Outputs all attributes of resource_type."
  value = {
    for application_password in keys(azuread_application_password.application_password) :
    application_password => {
      for key, value in azuread_application_password.application_password[application_password] :
      key => value
    }
  }
  sensitive = true
}

output "service_principal" {
  description = "Outputs all attributes of resource_type."
  value = {
    for service_principal in keys(azuread_service_principal.service_principal) :
    service_principal => {
      for key, value in azuread_service_principal.service_principal[service_principal] :
      key => value
    }
  }
}

output "service_principal_password" {
  description = "Outputs all attributes of resource_type."
  value = {
    for service_principal_password in keys(azuread_service_principal_password.service_principal_password) :
    service_principal_password => {
      for key, value in azuread_service_principal_password.service_principal_password[service_principal_password] :
      key => value
    }
  }
  sensitive = true
}

output "variables" {
  description = "Displays all configurable variables passed by the module. __default__ = predefined values per module. __merged__ = result of merging the default values and custom values passed to the module"
  value = {
    default = {
      for variable in keys(local.default) :
      variable => local.default[variable]
    }
    merged = {
      user = {
        for key in keys(var.user) :
        key => local.user[key]
      }
      group = {
        for key in keys(var.group) :
        key => local.group[key]
      }
      group_member = {
        for key in keys(var.group_member) :
        key => local.group_member[key]
      }
      application = {
        for key in keys(var.application) :
        key => local.application[key]
      }
      application_password = {
        for key in keys(var.application_password) :
        key => local.application_password[key]
      }
      service_principal = {
        for key in keys(var.service_principal) :
        key => local.service_principal[key]
      }
      service_principal_password = {
        for key in keys(var.service_principal_password) :
        key => local.service_principal_password[key]
      }
    }
  }
}



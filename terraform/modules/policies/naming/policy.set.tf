locals {
  #merge all types of policies
  merged_policy_rules = concat(tolist(local.all_policies), tolist(local.alphanum_policies), tolist(local.smaller_names_policies), local.snet_policies)
}
resource "azurerm_policy_definition" "resourse_naming" {
  for_each            = { for idx, val in local.merged_policy_rules : idx => val }
  name                = "Naming Policy for ${each.value.policy_name}"
  display_name        = "Naming Policy for ${each.value.policy_name}"
  policy_type         = "Custom"
  mode                = "All"
  management_group_id = var.management_group_id
  policy_rule         = each.value.policy_rule_resources
}

data "azurerm_management_group" "mg" {
  name = var.management_group_id
}

resource "azurerm_policy_set_definition" "resourse_naming" {

  name                = "NamePolicyinitiativeGeneral"
  display_name        = "Naming Policy initiative General"
  policy_type         = "Custom"
  management_group_id = var.management_group_id


  dynamic "policy_definition_reference" {
    for_each = [for idx, val in local.all_policies : {
      id = azurerm_policy_definition.resourse_naming[idx].id
    }]
    content {
      policy_definition_id = policy_definition_reference.value.id
    }

  }

}

data "azurerm_management_group" "example" {
  name = var.management_group_id
}


resource "azurerm_management_group_policy_assignment" "resourse_naming" {
  name                 = "liresourcenamingstandard"
  display_name         = "LI: Azure Resources must have the correct naming standard applied."
  policy_definition_id = azurerm_policy_set_definition.resourse_naming.id
  management_group_id  = data.azurerm_management_group.example.id
  location             = var.location
  #not_scopes           = var.resourceNamingExclusionScope

}
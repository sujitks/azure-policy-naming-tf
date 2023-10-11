# naming policy for resource groups
# for landing zone resources it should be lz-lz1-svcname-envname-region-instance 
# where lz1 is short name of landing zone name, svcname is abbreviation of service between 3-6 chars
# envname is short abbreviation of environment (dev, tst, prd)
#region short code uks/ukw or neu/euw and two digit for number of instance
locals {
  rg_policy = <<rg_policy_part
{
      "if": {
          "allOf": [
              {
            "allOf": [
              {
                "field": "type",
                "matchInsensitively": "Microsoft.Resources/Subscriptions/resourceGroups"
              },
              {
                "allOf": [
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-cnr-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-dev-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-tst-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-qa-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-......-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-ppe-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-...-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-...-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-.....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-lz-...-.....-prd-uk.-##"
                  },
                  {
                    "Field": "Name",
                    "notMatchInsensitively": "rg-plt-...-......-prd-uk.-##"
                  },
                  {
                    "field": "name",
                    "notLike": "networkwatcherrg"
                  }
                ]
              }
            ]
          }
       },
      "then": {
        "effect": "deny"
      }
    }
rg_policy_part 

}


resource "azurerm_policy_definition" "rg_naming" {
  name                = "rgnamingconvention"
  display_name        = "RG Naming Convention"
  policy_type         = "Custom"
  mode                = "All"
  management_group_id = var.management_group_id
  policy_rule         = local.rg_policy
}

resource "azurerm_management_group_policy_assignment" "rg_naming" {
  name                 = "rgnamingstandard"
  display_name         = "Azure Resources Group must have the correct naming standard applied."
  policy_definition_id = azurerm_policy_definition.rg_naming.id
  management_group_id  = var.management_group_id
  location             = var.location
  metadata             = <<METADATA
    {
    "category": "General"
    }
METADATA
}
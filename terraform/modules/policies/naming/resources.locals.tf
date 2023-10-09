#general resources where there are no restriction and they can have around 24 chars or above and allows hyphens
locals {

  all_policies = [for name in local.general_names :
    {
      policy_name           = name.resourceType
      policy_rule_resources = <<policy_rule_1st_part
{  
  "if": {
    "anyOf": [
         {
            "allOf": [
                        {
                            "field": "type",
                            "match": "${name.resource_namespace}"
                        },
                        {
                            "allOf": [
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-${name.caf_abbreviation}-.....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-${name.caf_abbreviation}-.....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-.....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-${name.caf_abbreviation}-......-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-${name.caf_abbreviation}-......-prd-uk.-##"
                                }
                            ]
                        }
                    ]
         }  
    ] 
}, 
"then": {
        "effect": "audit"
    }
}

policy_rule_1st_part 

  }]

}
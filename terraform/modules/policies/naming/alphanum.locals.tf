# general resources restriction and they can have up to 24 chars and only alphanumeric
locals {

  alphanum_policies = [for name in local.alphanum_names :
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
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}...cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}...cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}...cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}...cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}.....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}.....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}.....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}.....cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}......cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}......cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}......cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}......cnruk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}...devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}...devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}...devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}...devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}.....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}.....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}.....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}.....devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}......devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}......devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}......devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}......devuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}...tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}...tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}...tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}...tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}.....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}.....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}.....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}.....tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}......tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}......tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}......tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}......tstuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}...qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}...qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}...qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}...qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}.....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}.....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}.....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}.....qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}......qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}......qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}......qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}......qauk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}...ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}...ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}...ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}...ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}.....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}.....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}.....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}.....ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}......ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}......ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}......ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}......ppeuk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}...prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}...prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}...prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}...prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz...${name.caf_abbreviation}.....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt...${name.caf_abbreviation}.....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}.....prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz....${name.caf_abbreviation}......prduk.##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt....${name.caf_abbreviation}......prduk.##"
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
locals {
  # naming policy for resources where max 15 chars are allowed for example virtual machines
  smaller_names_policies = [for name in local.smaller_names :
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
                                    "notMatchInsensitively": "lz${name.caf_abbreviation}...cnruk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl${name.caf_abbreviation}...cnruk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz.${name.caf_abbreviation}...cnruk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl.${name.caf_abbreviation}...cnruk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz${name.caf_abbreviation}...devuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl${name.caf_abbreviation}...devuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz.${name.caf_abbreviation}...devuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl.${name.caf_abbreviation}...devuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz${name.caf_abbreviation}...tstuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl${name.caf_abbreviation}...tstuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz.${name.caf_abbreviation}...tstuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl.${name.caf_abbreviation}...tstuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz${name.caf_abbreviation}...qauk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl${name.caf_abbreviation}...qauk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz.${name.caf_abbreviation}...qauk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl.${name.caf_abbreviation}...qauk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz${name.caf_abbreviation}...ppeuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl${name.caf_abbreviation}...ppeuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz.${name.caf_abbreviation}...ppeuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl.${name.caf_abbreviation}...ppeuk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz${name.caf_abbreviation}...prduk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl${name.caf_abbreviation}...prduk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz.${name.caf_abbreviation}...prduk.#"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "pl.${name.caf_abbreviation}...prduk.#"
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
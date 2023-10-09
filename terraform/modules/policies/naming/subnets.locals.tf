# naming policy for subnets, there are some special subnet which must have unique names as per azure.

locals {
  snet_policies = [{
    policy_name           = "subnets"
    policy_rule_resources = <<policy_rule_template
{  
  "if": {
    "anyOf": [
         {
            "allOf": [
                        {
                            "field": "type",
                            "match": "Microsoft.Network/virtualNetworks/subnets"
                        },
                        {
                            "allOf": [
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "RouteServerSubnet"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "AzureFirewallManagementSubnet"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "GatewaySubnet"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "AzureFirewallSubnet "
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "AzureBastionSubnet"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-...-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-.....-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-......-cnr-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-...-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-.....-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-......-dev-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-...-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-.....-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-......-tst-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-...-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-.....-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-......-qa-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-...-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-.....-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-......-ppe-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-...-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-...-snet-.....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-...-snet-.....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-.....-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "lz-....-snet-......-prd-uk.-##"
                                },
                                {
                                    "Field": "Name",
                                    "notMatchInsensitively": "plt-....-snet-......-prd-uk.-##"
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

policy_rule_template

  }]

}
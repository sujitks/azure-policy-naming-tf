# resource types and their abbreation to create policy
locals {
  general_names = {
    // API management service instance
    api_management_service_instance = {
      resourceType       = "ApiManagement"
      resource_namespace = "Microsoft.ApiManagement/service"
      caf_abbreviation   = "apim"
    }
    azure_cognitive_search = {
      resourceType       = "Search"
      resource_namespace = "Microsoft.Search/searchServices"
      caf_abbreviation   = "srch"
    }
    azure_cognitive_services = {
      resourceType       = "CognitiveServices"
      resource_namespace = "Microsoft.CognitiveServices/accounts"
      caf_abbreviation   = "cog"
    }
    azure_machine_learning_workspace = {
      resourceType       = "MachineLearningServices"
      resource_namespace = "Microsoft.MachineLearningServices/workspaces"
      caf_abbreviation   = "mlw"
    }

    azure_databricks_workspace = {
      resourceType       = "Databricks"
      resource_namespace = "Microsoft.Databricks/workspaces"
      caf_abbreviation   = "dbw"
    }

    azure_data_explorer_cluster_database = {
      resourceType       = "KustoDB"
      resource_namespace = "Microsoft.Kusto/clusters/databases"
      caf_abbreviation   = "dedb"
    }
    azure_data_factory = {
      resourceType       = "DataFactory"
      resource_namespace = "Microsoft.DataFactory/factories"
      caf_abbreviation   = "adf"
    }
    // Route table
    route_table = {
      resourceType       = "RouteTables"
      resource_namespace = "Microsoft.Network/routeTables"
      caf_abbreviation   = "rt"
    }
    traffic_manager_profile = {
      resourceType       = "TrafficManager"
      resource_namespace = "Microsoft.Network/trafficManagerProfiles"
      caf_abbreviation   = "traf"
    }
    virtual_network = {
      resourceType       = "VirtualNetwork"
      resource_namespace = "Microsoft.Network/virtualNetworks"
      caf_abbreviation   = "vnet"
    }
    // Azure Bastion
    azure_bastion = {
      resourceType       = "BastionHosts"
      resource_namespace = "Microsoft.Network/bastionHosts"
      caf_abbreviation   = "bas"
    }
    // Key vault
    key_vault = {
      resourceType       = "KeyVaults"
      resource_namespace = "Microsoft.KeyVault/vaults"
      caf_abbreviation   = "kv"
    }
    // Managed identity
    managed_identity = {
      resourceType       = "UserManagedIdentity"
      resource_namespace = "Microsoft.ManagedIdentity/userAssignedIdentities"
      caf_abbreviation   = "id"
    }
    // Virtual WAN
    virtual_wan = {
      resourceType       = "VirtualWans"
      resource_namespace = "Microsoft.Network/virtualWans"
      caf_abbreviation   = "vwan"
    }
    // Virtual network gateway
    virtual_network_gateway = {
      resourceType       = "VirtualNetGateways"
      resource_namespace = "Microsoft.Network/virtualNetworkGateways"
      caf_abbreviation   = "vgw"
    }
    # // Private Link
    private_link = {
      resourceType       = "PrivateLinks"
      resource_namespace = "Microsoft.Network/privateLinkServices"
      caf_abbreviation   = "pl"
    }
    # // Private endpoint
    private_endpoint = {
      resourceType       = "PrivateEndpoints"
      resource_namespace = "Microsoft.Network/privateEndpoints"
      caf_abbreviation   = "pep"
    }
    # // Public IP address
    public_ip_address = {
      resourceType       = "PublicIP"
      resource_namespace = "Microsoft.Network/publicIPAddresses"
      caf_abbreviation   = "pip"
    }
    // NAT gateway
    nat_gateway = {
      resourceType       = "NatGateways"
      resource_namespace = "Microsoft.Network/natGateways"
      caf_abbreviation   = "ng"
    }
    # // Network interface (NIC)
    network_interface_nic = {
      resourceType       = "NetworkInterfaces"
      resource_namespace = "Microsoft.Network/networkInterfaces"
      caf_abbreviation   = "nic"
    }
    // Network security group (NSG)
    network_security_group_nsg = {
      resourceType       = "NetworkSecurityGroups"
      resource_namespace = "Microsoft.Network/networkSecurityGroups"
      caf_abbreviation   = "nsg"
    }
    // Azure Synapse Analytics Workspaces
    azure_synapse_analytics_workspaces = {
      resourceType       = "SynapseWorkspace"
      resource_namespace = "Microsoft.Synapse/workspaces"
      caf_abbreviation   = "synw"
    }
    // Azure Synapse Analytics SQL Dedicated Pool
    azure_synapse_analytics_sql_dedicated_pool = {
      resourceType       = "SynapseSqlPools"
      resource_namespace = "Microsoft.Synapse/workspaces/sqlPools"
      caf_abbreviation   = "synp"
    }
    // Local network gateway
    local_network_gateway = {
      resourceType       = "LocalNetworkGateways"
      resource_namespace = "Microsoft.Network/localNetworkGateways"
      caf_abbreviation   = "lgw"
    }
    // Front Door (Standard/Premium) profile
    front_door_standardpremium_profile = {
      resourceType       = "FrontDoorProfiles"
      resource_namespace = "Microsoft.Cdn/profiles"
      caf_abbreviation   = "afd"
    }
    // Front Door (Standard/Premium) endpoint
    front_door_standard_premium_endpoint = {
      resourceType       = "FrontDoorEndpoints"
      resource_namespace = "Microsoft.Cdn/profiles/afdEndpoints"
      caf_abbreviation   = "fde"
    }
    // Front Door firewall policy
    front_door_firewall_policy = {
      resourceType       = "FrontDoorPolicy"
      resource_namespace = "Microsoft.Network/frontdoorWebApplicationFirewallPolicies"
      caf_abbreviation   = "fdfp"
    }
    # // Front Door 
    front_door_classic = {
      resourceType       = "FrontDoors"
      resource_namespace = "Microsoft.Network/frontDoors"
      caf_abbreviation   = "afd"
    }
    // Load balancer 
    load_balancer = {
      resourceType       = "LoadBalancers"
      resource_namespace = "Microsoft.Network/loadBalancers"
      caf_abbreviation   = "lbs" # custom li 
    }
    # // Firewall
    firewall = {
      resourceType       = "AzureFirewalls"
      resource_namespace = "Microsoft.Network/azureFirewalls"
      caf_abbreviation   = "afw"
    }
    // Firewall policy
    firewall_policy = {
      resourceType       = "FirewallPolicies"
      resource_namespace = "Microsoft.Network/firewallPolicies"
      caf_abbreviation   = "afwp"
    }
    // Application Insights
    application_insights = {
      resourceType       = "ApplicationInsights"
      resource_namespace = "Microsoft.Insights/components"
      caf_abbreviation   = "appi"
    }
    # // Azure Monitor action group
    azure_monitor_action_group = {
      resourceType       = "ActionGroups"
      resource_namespace = "Microsoft.Insights/actionGroups"
      caf_abbreviation   = "ag"
    }

    # // Log Analytics workspace
    log_analytics_workspace = {
      resourceType       = "LogAnalytics"
      resource_namespace = "Microsoft.OperationalInsights/workspaces"
      caf_abbreviation   = "log"
    }

    // Microsoft Purview instance
    microsoft_purview_instance = {
      resourceType       = "PurviewAccounts"
      resource_namespace = "Microsoft.Purview/accounts"
      caf_abbreviation   = "pvew"
    }
    # // Application gateway
    application_gateway = {
      resourceType       = "ApplicationGateways"
      resource_namespace = "Microsoft.Network/applicationGateways"
      caf_abbreviation   = "agw"
    }
    // Application security group (ASG)
    application_security_group_asg = {
      resourceType       = "ApplicationSecurityGroups"
      resource_namespace = "Microsoft.Network/applicationSecurityGroups"
      caf_abbreviation   = "asg"
    }
    // CDN profile
    cdn_profile = {
      resourceType       = "CDNProfiles"
      resource_namespace = "Microsoft.Cdn/profiles"
      caf_abbreviation   = "cdnp"
    }
    # // CDN endpoint
    cdn_endpoint = {
      resourceType       = "CDNEndpoints"
      resource_namespace = "Microsoft.Cdn/profiles/endpoints"
      caf_abbreviation   = "cdne"
    }
    // Connections
    connections = {
      resourceType       = "Connections"
      resource_namespace = "Microsoft.Network/connections"
      caf_abbreviation   = "con"
    }
    // AKS cluster
    aks_cluster = {
      resourceType       = "AKSClusters"
      resource_namespace = "Microsoft.ContainerService/managedClusters"
      caf_abbreviation   = "aks"
    }
    // Container apps
    container_apps = {
      resourceType       = "ContainerApps"
      resource_namespace = "Microsoft.App/containerApps"
      caf_abbreviation   = "ca"
    }
    // Container apps environment
    container_apps_environment = {
      resourceType       = "ContainerAppsEnvironments"
      resource_namespace = "Microsoft.App/managedEnvironments"
      caf_abbreviation   = "cae"
    }

    // Container instance
    container_instance = {
      resourceType       = "ContainerGroups"
      resource_namespace = "Microsoft.ContainerInstance/containerGroups"
      caf_abbreviation   = "ci"
    }
    // Service Fabric cluster
    service_fabric_cluster = {
      resourceType       = "ServiceFabricClusters"
      resource_namespace = "Microsoft.ServiceFabric/clusters"
      caf_abbreviation   = "sf"
    }
    // Service Fabric managed cluster
    service_fabric_managed_cluster = {
      resourceType       = "ServiceFabManagedClusters"
      resource_namespace = "Microsoft.ServiceFabric/managedClusters"
      caf_abbreviation   = "sfmc"
    }
    # // Azure Managed Grafana
    azure_managed_grafana = {
      resourceType       = "ManagedGrafana"
      resource_namespace = "Microsoft.Dashboard/grafana"
      caf_abbreviation   = "amg"
    }
    // API management service instance
    api_management_service_instance = {
      resourceType       = "ApiManagement"
      resource_namespace = "Microsoft.ApiManagement/service"
      caf_abbreviation   = "apim"
    }
    // Integration account
    integration_account = {
      resourceType       = "IntegrationAccounts"
      resource_namespace = "Microsoft.Logic/integrationAccounts"
      caf_abbreviation   = "ia"
    }
    // Logic apps
    logic_apps = {
      resourceType       = "LogicApps"
      resource_namespace = "Microsoft.Logic/workflows"
      caf_abbreviation   = "logc"
    }
    // Service Bus namespace
    service_bus_namespace = {
      resourceType       = "ServiceBusNamespaces"
      resource_namespace = "Microsoft.ServiceBus/namespaces"
      caf_abbreviation   = "sbns"
    }
    // Service Bus queue
    service_bus_queue = {
      resourceType       = "ServiceBusQueues"
      resource_namespace = "Microsoft.ServiceBus/namespaces/queues"
      caf_abbreviation   = "sbq"
    }
    // Service Bus topic
    service_bus_topic = {
      resourceType       = "ServiceBusTopics"
      resource_namespace = "Microsoft.ServiceBus/namespaces/topics"
      caf_abbreviation   = "sbt"
    }
    // Service Bus topic subscription
    service_bus_topic_subscription = {
      resourceType       = "ServiceBusSubscriptions"
      resource_namespace = "Microsoft.ServiceBus/namespaces/topics/subscriptions"
      caf_abbreviation   = "sbts"
    }
    // Automation account
    automation_account = {
      resourceType       = "AutomationAccounts"
      resource_namespace = "Microsoft.Automation/automationAccounts"
      caf_abbreviation   = "aa"
    }
    notification_hubs = {
      resourceType       = "NotificationNubs"
      resource_namespace = "Microsoft.NotificationHubs/namespaces/notificationHubs"
      caf_abbreviation   = "ntf"
    }
    // Notification Hubs namespace
    notification_hubs_namespace = {
      resourceType       = "NotificationHubNamespaces"
      resource_namespace = "Microsoft.NotificationHubs/namespaces"
      caf_abbreviation   = "ntns"
    }
    // Managed disk (data)
    managed_disk_data = {
      resourceType       = "ManagedDisks"
      resource_namespace = "Microsoft.Compute/disks"
      caf_abbreviation   = "disk"
    }
    // Hosting environment
    hosting_environment = {
      resourceType       = "hostingEnvironments"
      resource_namespace = "Microsoft.Web/hostingEnvironments"
      caf_abbreviation   = "host"
    }
    // App Service plan
    app_service_plan = {
      resourceType       = "AppServicePlans"
      resource_namespace = "Microsoft.Web/serverFarms"
      caf_abbreviation   = "asp"
    }
    // Static web app
    static_web_app = {
      resourceType       = "StaticSites"
      resource_namespace = "Microsoft.Web/staticSites"
      caf_abbreviation   = "stapp"
    }
  }
  alphanum_names = {
    azure_analysis_services_server = {
      resourceType       = "AnalysisServices"
      resource_namespace = "Microsoft.AnalysisServices/servers"
      caf_abbreviation   = "as"
    }
    //storage accounts
    azure_storage_accounts = {
      resourceType       = "StorageAccounts"
      resource_namespace = "Microsoft.Storage/storageAccounts"
      caf_abbreviation   = "st"
    }
    azure_data_explorer_cluster = {
      resourceType       = "DataExplorerClusters"
      resource_namespace = "Microsoft.Kusto/clusters"
      caf_abbreviation   = "dec"
    }

    // Data Lake Store account lowercase letters and numbers 3-24
    data_lake_store_account = {
      resourceType       = "DataLakeStorage"
      resource_namespace = "Microsoft.DataLakeStore/accounts"
      caf_abbreviation   = "dls"
    }
    // Data Lake Analytics account lowercase letters and numbers 3-24
    data_lake_analytics_account = {
      resourceType       = "DataLakeAnalytics"
      resource_namespace = "Microsoft.DataLakeAnalytics/accounts"
      caf_abbreviation   = "dla"
    }
    // Power BI Embedded lowercase letters or numbers 
    power_bi_embedded = {
      resourceType       = "PowerBIDedicated"
      resource_namespace = "Microsoft.PowerBIDedicated/capacities"
      caf_abbreviation   = "pbi"
    }
    // Batch accounts lower case and numbers 3-24
    batch_accounts = {
      resourceType       = "BatchAccounts"
      resource_namespace = "Microsoft.Batch/batchAccounts"
      caf_abbreviation   = "ba"
    }
    // Gallery alpha numeric and periods
    gallery = {
      resourceType       = "ComputeGalleries"
      resource_namespace = "Microsoft.Compute/galleries"
      caf_abbreviation   = "gal"
    }
    // Container registry alpha numeric
    container_registry = {
      resourceType       = "ContainerRegistries"
      resource_namespace = "Microsoft.ContainerRegistry/registries"
      caf_abbreviation   = "cr"
    }


  }

  smaller_names = {
    // Cloud service 1-15
    cloud_service = {
      resourceType       = "CloudServices"
      resource_namespace = "Microsoft.Compute/cloudServices"
      caf_abbreviation   = "cld"
    }
    // Virtual machine 1-15 windows and 1-64 linux
    virtual_machine = {
      resourceType       = "VirtualMachines"
      resource_namespace = "Microsoft.Compute/virtualMachines"
      caf_abbreviation   = "vm"
    }
    // Virtual machine maintenance configuration
    virtual_machine_maintenance_configuration = {
      resourceType       = "VMConfigurations"
      resource_namespace = "Microsoft.Maintenance/maintenanceConfigurations"
      caf_abbreviation   = "mc"
    }

  }
}
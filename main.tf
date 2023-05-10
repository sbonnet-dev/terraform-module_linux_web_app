
resource "azurerm_linux_web_app" "linux_web_app" {
  name     = lower(format("lwapp-%s-%s-%s", var.project, var.environment, var.name))

  app_settings = {
    AZURE_OPENAI_CHATGPT_DEPLOYMENT = "chat"
    AZURE_OPENAI_GPT_DEPLOYMENT     = "davinci"
    AZURE_OPENAI_SERVICE            = "cog-tvxbgsftoyot5"
    AZURE_SEARCH_INDEX              = "gptkbindex"
    AZURE_SEARCH_SERVICE            = "gptkb-tvxbgsftoyot5"
    AZURE_STORAGE_ACCOUNT           = "sttvxbgsftoyot5"
    AZURE_STORAGE_CONTAINER         = "content"
    ENABLE_ORYX_BUILD               = "True"
    SCM_DO_BUILD_DURING_DEPLOYMENT  = "True"
  }
  https_only          = true
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = "/subscriptions/01f9de63-11ac-4a41-acd5-e398487749e5/resourceGroups/rg-sboai-env/providers/Microsoft.Web/serverfarms/plan-tvxbgsftoyot5"
  
  tags = {
    env       = var.environment
    project   = var.project
    owner     = var.owner
  }

  identity {
    type = "SystemAssigned"
  }
  
  logs {
    detailed_error_messages = true
    failed_request_tracing  = true
    application_logs {
      file_system_level = "Verbose"
    }
    http_logs {
      file_system {
        retention_in_days = 1
        retention_in_mb   = 35
      }
    }
  }

  site_config {
    ftps_state        = "FtpsOnly"
    use_32_bit_worker = false
    cors {
      allowed_origins = ["https://ms.portal.azure.com", "https://portal.azure.com"]
    }
  }
}
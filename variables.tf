variable "name" {
  type        = string
  description = "Resource group name"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "project" {
  type        = string
  description = "Resource group name"
  default     = "OSCAR"
}


variable "environment" {
  type        = string
  description = "Specify the type of environement"
  default     = "dev"

  validation {
    condition = contains([
      "dev",
      "prod",
    ], var.environment)
    error_message = "environment invalid. Valid value for environment are (dev,test,integration,sandbox,non-prod,pre-prod,prod)"
  }
}

variable "location" {
  type        = string
  default     = "francecentral"
  description = "location for this ressource group. Possible location are francecentral or westeurope"

  validation {
    condition = contains([
      "francecentral",
      "westeurope",
      "northeurope",
      "unitedstates",
      "canadaeast"
    ], var.location)
    error_message = "location invalid. Valid value for location are (francecentral,westeurope,northeurope)"
  }
}

variable "owner" {
  type        = string
  description = "Owner"
}

variable "service_plan_id" {
  type        = string
  description = "ID Service Plan"
}

variable "storage_account_name" {
  type        = string
  description = "Storage Account Name"
}

variable "search_service_name" {
  type        = string
  description = "Search Service Name"
}

variable "search_index" {
  type        = string
  description = "Search Index"
}

variable "openai_service" {
  type        = string
  description = "OpenAI Service"
}

variable "openai_chatgpt_deployement" {
  type        = string
  description = "ChatGPT Deployement name"
}

variable "openai_gpt_deployement" {
  type        = string
  description = "GPT Deployement name"
}


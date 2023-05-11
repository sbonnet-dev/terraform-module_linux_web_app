## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_web_app.linux_web_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Specify the type of environement | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | location for this ressource group. Possible location are francecentral or westeurope | `string` | `"francecentral"` | no |
| <a name="input_name"></a> [name](#input\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_openai_chatgpt_deployement"></a> [openai\_chatgpt\_deployement](#input\_openai\_chatgpt\_deployement) | ChatGPT Deployement name | `string` | n/a | yes |
| <a name="input_openai_gpt_deployement"></a> [openai\_gpt\_deployement](#input\_openai\_gpt\_deployement) | GPT Deployement name | `string` | n/a | yes |
| <a name="input_openai_service"></a> [openai\_service](#input\_openai\_service) | OpenAI Service | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Resource group name | `string` | `"OSCAR"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_search_index"></a> [search\_index](#input\_search\_index) | Search Index | `string` | n/a | yes |
| <a name="input_search_service_name"></a> [search\_service\_name](#input\_search\_service\_name) | Search Service Name | `string` | n/a | yes |
| <a name="input_service_plan_id"></a> [service\_plan\_id](#input\_service\_plan\_id) | ID Service Plan | `string` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Storage Account Name | `string` | n/a | yes |

## Outputs

No outputs.

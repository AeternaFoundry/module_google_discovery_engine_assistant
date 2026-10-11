output "discovery_engine_assistants_id" {
  description = "Map of id values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_assistants_assistant_id" {
  description = "Map of assistant_id values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no assistant_id are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.assistant_id if v.assistant_id != null && length(v.assistant_id) > 0 }
}
output "discovery_engine_assistants_collection_id" {
  description = "Map of collection_id values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no collection_id are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "discovery_engine_assistants_customer_policy" {
  description = "Map of customer_policy values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no customer_policy are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => one(v.customer_policy) if v.customer_policy != null && length(v.customer_policy) > 0 }
}
output "discovery_engine_assistants_deletion_policy" {
  description = "Map of deletion_policy values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no deletion_policy are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "discovery_engine_assistants_description" {
  description = "Map of description values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no description are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.description if v.description != null && length(v.description) > 0 }
}
output "discovery_engine_assistants_display_name" {
  description = "Map of display_name values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no display_name are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "discovery_engine_assistants_engine_id" {
  description = "Map of engine_id values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no engine_id are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.engine_id if v.engine_id != null && length(v.engine_id) > 0 }
}
output "discovery_engine_assistants_generation_config" {
  description = "Map of generation_config values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no generation_config are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => one(v.generation_config) if v.generation_config != null && length(v.generation_config) > 0 }
}
output "discovery_engine_assistants_location" {
  description = "Map of location values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_assistants_name" {
  description = "Map of name values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_assistants_project" {
  description = "Map of project values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_assistants_web_grounding_type" {
  description = "Map of web_grounding_type values across all discovery_engine_assistants, keyed the same as var.discovery_engine_assistants except keys with no web_grounding_type are omitted"
  value       = { for k, v in google_discovery_engine_assistant.discovery_engine_assistants : k => v.web_grounding_type if v.web_grounding_type != null && length(v.web_grounding_type) > 0 }
}


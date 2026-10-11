resource "google_discovery_engine_assistant" "discovery_engine_assistants" {
  for_each = var.discovery_engine_assistants

  assistant_id       = each.value.assistant_id
  collection_id      = each.value.collection_id
  display_name       = each.value.display_name
  engine_id          = each.value.engine_id
  location           = each.value.location
  deletion_policy    = each.value.deletion_policy
  description        = each.value.description
  project            = each.value.project
  web_grounding_type = each.value.web_grounding_type

  dynamic "customer_policy" {
    for_each = each.value.customer_policy != null ? [each.value.customer_policy] : []
    content {
      dynamic "banned_phrases" {
        for_each = customer_policy.value.banned_phrases != null ? customer_policy.value.banned_phrases : []
        content {
          ignore_diacritics = banned_phrases.value.ignore_diacritics
          match_type        = banned_phrases.value.match_type
          phrase            = banned_phrases.value.phrase
        }
      }
      dynamic "model_armor_config" {
        for_each = customer_policy.value.model_armor_config != null ? [customer_policy.value.model_armor_config] : []
        content {
          failure_mode         = model_armor_config.value.failure_mode
          response_template    = model_armor_config.value.response_template
          user_prompt_template = model_armor_config.value.user_prompt_template
        }
      }
    }
  }

  dynamic "generation_config" {
    for_each = each.value.generation_config != null ? [each.value.generation_config] : []
    content {
      default_language = generation_config.value.default_language
      dynamic "system_instruction" {
        for_each = generation_config.value.system_instruction != null ? [generation_config.value.system_instruction] : []
        content {
          additional_system_instruction = system_instruction.value.additional_system_instruction
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


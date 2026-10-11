variable "discovery_engine_assistants" {
  description = <<EOT
Map of discovery_engine_assistants, attributes below
Required:
    - assistant_id
    - collection_id
    - display_name
    - engine_id
    - location
Optional:
    - deletion_policy
    - description
    - project
    - web_grounding_type
    - customer_policy (block):
        - banned_phrases (optional, block):
            - ignore_diacritics (optional)
            - match_type (optional)
            - phrase (required)
        - model_armor_config (optional, block):
            - failure_mode (optional)
            - response_template (required)
            - user_prompt_template (required)
    - generation_config (block):
        - default_language (optional)
        - system_instruction (optional, block):
            - additional_system_instruction (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    assistant_id       = string
    collection_id      = string
    display_name       = string
    engine_id          = string
    location           = string
    deletion_policy    = optional(string)
    description        = optional(string)
    project            = optional(string)
    web_grounding_type = optional(string)
    customer_policy = optional(object({
      banned_phrases = optional(list(object({
        ignore_diacritics = optional(bool)
        match_type        = optional(string)
        phrase            = string
      })))
      model_armor_config = optional(object({
        failure_mode         = optional(string)
        response_template    = string
        user_prompt_template = string
      }))
    }))
    generation_config = optional(object({
      default_language = optional(string)
      system_instruction = optional(object({
        additional_system_instruction = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


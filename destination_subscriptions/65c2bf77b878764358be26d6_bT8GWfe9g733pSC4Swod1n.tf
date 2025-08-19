import {
  to = segment_destination_subscription.id-65c2bf77b878764358be26d6_bT8GWfe9g733pSC4Swod1n
  id = "65c2bf77b878764358be26d6:bT8GWfe9g733pSC4Swod1n"
}

resource "segment_destination_subscription" "id-65c2bf77b878764358be26d6_bT8GWfe9g733pSC4Swod1n" {
  action_id            = "goFLcVAjNaQf1qMUuStjk4"
  destination_id       = "65c2bf77b878764358be26d6"
  enabled              = true
  model_id             = null
  name                 = "Lead"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 5000
    city = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.city"
        }
        exists = {
          "@path" = "$.traits.address.city"
        }
        then = {
          "@path" = "$.traits.address.city"
        }
      }
    }
    company = {
      "@template" = "{{traits.__entity_context[0].domain-users[0].__children.entity-users[0].__children.entities[0].ENTITY_NAME}}"
    }
    country = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.country"
        }
        exists = {
          "@path" = "$.traits.address.country"
        }
        then = {
          "@path" = "$.traits.address.country"
        }
      }
    }
    customFields = {
      is_paid__c = {
        "@template" = "{{traits.__entity_context[0].domain-users[0].__children.entity-users[0].IS_PAID}}"
      }
      plan_seats__c = {
        "@template" = "{{traits.__entity_context[0].domain-users[0].__children.entity-users[0].__children.entities[0].PLAN_SEATS}}"
      }
      plan_tier__c = {
        "@template" = "{{traits.__entity_context[0].domain-users[0].__children.entity-users[0].__children.entities[0].PLAN_TIER}}"
      }
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.properties.email"
        }
        exists = {
          "@path" = "$.traits.email"
        }
        then = {
          "@path" = "$.traits.email"
        }
      }
    }
    enable_batching = false
    first_name = {
      "@if" = {
        else = {
          "@path" = "$.properties.first_name"
        }
        exists = {
          "@path" = "$.traits.first_name"
        }
        then = {
          "@path" = "$.traits.first_name"
        }
      }
    }
    last_name = {
      "@if" = {
        else = {
          "@path" = "$.properties.last_name"
        }
        exists = {
          "@path" = "$.traits.last_name"
        }
        then = {
          "@path" = "$.traits.last_name"
        }
      }
    }
    operation = "upsert"
    postal_code = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.postal_code"
        }
        exists = {
          "@path" = "$.traits.address.postal_code"
        }
        then = {
          "@path" = "$.traits.address.postal_code"
        }
      }
    }
    recordMatcherOperator = "OR"
    state = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.state"
        }
        exists = {
          "@path" = "$.traits.address.state"
        }
        then = {
          "@path" = "$.traits.address.state"
        }
      }
    }
    street = {
      "@if" = {
        else = {
          "@path" = "$.properties.address.street"
        }
        exists = {
          "@path" = "$.traits.address.street"
        }
        then = {
          "@path" = "$.traits.address.street"
        }
      }
    }
    traits = {
      email = {
        "@template" = "{{traits.__entity_context[0].domain-users[0].DU_EMAIL}}"
      }
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_2c0gUlMndInzLGLt3COhGQbtsnx\""
}
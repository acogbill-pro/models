import {
  to = segment_destination_subscription.id-65c1714b5986c63033fde680_nrwX8xcNNMqCDMvGinmupL
  id = "65c1714b5986c63033fde680:nrwX8xcNNMqCDMvGinmupL"
}

resource "segment_destination_subscription" "id-65c1714b5986c63033fde680_nrwX8xcNNMqCDMvGinmupL" {
  action_id            = "goFLcVAjNaQf1qMUuStjk4"
  destination_id       = "65c1714b5986c63033fde680"
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
      "@if" = {
        else = {
          "@path" = "$.properties.company"
        }
        exists = {
          "@path" = "$.traits.company"
        }
        then = {
          "@path" = "$.traits.company"
        }
      }
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
      is_paid = {
        "@template" = "{{traits.__entity_context[0].domain-users[0].__children.entity-users[0].IS_PAID}}"
      }
      plan_tier = {
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
      "@path" = "$.traits.first_name"
    }
    last_name = {
      "@path" = "$.traits.last_name"
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
  trigger = "type = \"identify\""
}
import {
  to = segment_destination_subscription.id-65b17f71b7d10c0de8285af7_371uHLPBJxFz4cj4eK4n21
  id = "65b17f71b7d10c0de8285af7:371uHLPBJxFz4cj4eK4n21"
}

resource "segment_destination_subscription" "id-65b17f71b7d10c0de8285af7_371uHLPBJxFz4cj4eK4n21" {
  action_id            = "5DAMQ5qUaF2rZoyVNiReCa"
  destination_id       = "65b17f71b7d10c0de8285af7"
  enabled              = true
  model_id             = null
  name                 = "Contact"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 5000
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
      "@template" = "{{__segment_entities.marketing-east.account-entity.FIRST_NAME}}"
    }
    last_name = {
      "@template" = "{{__segment_entities.marketing-east.account-entity.LAST_NAME}}"
    }
    mailing_city = {
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
    mailing_country = {
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
    mailing_postal_code = {
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
    mailing_state = {
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
    mailing_street = {
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
    operation             = "upsert"
    recordMatcherOperator = "OR"
    traits = {
      Custom_address = {
        "@template" = "{{__segment_entities.marketing-east.account-entity.ADDRESS_STREET}}"
      }
    }
  })
  trigger = "type = \"identify\""
}
import {
  to = segment_destination_subscription.id-65c29f6c2a3cf516473f2f62_uaZyumVYdw2Ywu4WH4nVrY
  id = "65c29f6c2a3cf516473f2f62:uaZyumVYdw2Ywu4WH4nVrY"
}

resource "segment_destination_subscription" "id-65c29f6c2a3cf516473f2f62_uaZyumVYdw2Ywu4WH4nVrY" {
  action_id            = "goFLcVAjNaQf1qMUuStjk4"
  destination_id       = "65c29f6c2a3cf516473f2f62"
  enabled              = true
  model_id             = null
  name                 = "Lead"
  reverse_etl_schedule = null
  settings = jsonencode({
    __segment_internal_directive = {
      "@transform" = {
        apply = {
          "@merge" = {
            direction = "right"
            objects = [{
              "@path" = "$."
              }, {
              properties = {
                "@merge" = {
                  direction = "right"
                  objects = [{
                    "@path" = "$.properties"
                    }, {
                    "@flatten" = {
                      omitArrays = true
                      separator  = "__"
                      value = {
                        "@path" = "$.properties.data_graph_entity_context"
                      }
                    }
                    }, {
                    data_graph_entity_context = {
                      "@path" = "$.doesnotexist"
                    }
                  }]
                }
              }
            }]
          }
        }
        mapping = {
          "@path" = "$."
        }
      }
    }
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
        "@path" = "$.traits.email"
      }
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_2c101NnloKgm6RiVJBXn4bM0Ee4\""
}
import {
  to = segment_destination_subscription.id-65c147b163b54bed8b3fefcd_4L6YhdVyPEfvk8Y675JVAJ
  id = "65c147b163b54bed8b3fefcd:4L6YhdVyPEfvk8Y675JVAJ"
}

resource "segment_destination_subscription" "id-65c147b163b54bed8b3fefcd_4L6YhdVyPEfvk8Y675JVAJ" {
  action_id            = "goFLcVAjNaQf1qMUuStjk4"
  destination_id       = "65c147b163b54bed8b3fefcd"
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
  trigger = "context.personas.event_emitter_id = \"ee_2by7yqKRRDqV46VkfLHhwk4H2hG\""
}
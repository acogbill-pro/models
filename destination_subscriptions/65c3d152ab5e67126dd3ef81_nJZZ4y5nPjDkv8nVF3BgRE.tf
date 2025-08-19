import {
  to = segment_destination_subscription.id-65c3d152ab5e67126dd3ef81_nJZZ4y5nPjDkv8nVF3BgRE
  id = "65c3d152ab5e67126dd3ef81:nJZZ4y5nPjDkv8nVF3BgRE"
}

resource "segment_destination_subscription" "id-65c3d152ab5e67126dd3ef81_nJZZ4y5nPjDkv8nVF3BgRE" {
  action_id            = "3d5gFs6q9sfwJVAYPDyGQc"
  destination_id       = "65c3d152ab5e67126dd3ef81"
  enabled              = true
  model_id             = null
  name                 = "Custom Event"
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
    action_source                   = "other"
    app_data_field                  = {}
    custom_data                     = {}
    data_processing_options         = false
    data_processing_options_country = 1
    data_processing_options_state   = 0
    event_id = {
      "@path" = "$.messageId"
    }
    event_name = {
      "@path" = "$.event"
    }
    event_time = "2024-02-07T00:03:34.317Z"
    user_data = {
      country = {
        "@path" = "$.properties.country"
      }
      email = {
        "@path" = "$.properties.email"
      }
      externalId = {
        "@if" = {
          else = {
            "@path" = "$.anonymousId"
          }
          exists = {
            "@path" = "$.properties.userId"
          }
          then = {
            "@path" = "$.properties.userId"
          }
        }
      }
      firstName = {
        "@path" = "$.properties.first_name"
      }
      lastName = {
        "@path" = "$.properties.last_name"
      }
      phone = {
        "@path" = "$.properties.phone"
      }
      state = {
        "@path" = "$.properties.state"
      }
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_2c3nZl1IrEOvAaSdc7vmp04gxZi\""
}
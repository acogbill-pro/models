import {
  to = segment_destination_subscription.id-6475e26e6c68f91e5121b229_c8e2M6WkjabV2jZigjrc5G
  id = "6475e26e6c68f91e5121b229:c8e2M6WkjabV2jZigjrc5G"
}

resource "segment_destination_subscription" "id-6475e26e6c68f91e5121b229_c8e2M6WkjabV2jZigjrc5G" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6475e26e6c68f91e5121b229"
  enabled              = true
  model_id             = null
  name                 = "Associated Entity Added"
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
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event = \"Entity Added\" and context.personas.computation_key = \"all_customer_accounts\" and context.personas.computation_class = \"audience\""
}
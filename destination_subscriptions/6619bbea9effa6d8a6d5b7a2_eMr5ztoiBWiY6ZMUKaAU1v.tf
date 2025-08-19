import {
  to = segment_destination_subscription.id-6619bbea9effa6d8a6d5b7a2_eMr5ztoiBWiY6ZMUKaAU1v
  id = "6619bbea9effa6d8a6d5b7a2:eMr5ztoiBWiY6ZMUKaAU1v"
}

resource "segment_destination_subscription" "id-6619bbea9effa6d8a6d5b7a2_eMr5ztoiBWiY6ZMUKaAU1v" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6619bbea9effa6d8a6d5b7a2"
  enabled              = true
  model_id             = null
  name                 = "Entities Audience Entered"
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
    email = {
      "@path" = "$.traits.email"
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
  trigger = "context.personas.event_emitter_id = \"ee_2f6hgrkTjDd2uQAtxpgbtD36tHq\""
}
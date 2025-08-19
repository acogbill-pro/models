import {
  to = segment_destination_subscription.id-65c26de548cbf95103659557_6pj6ba4qswWuhSgymzeGK5
  id = "65c26de548cbf95103659557:6pj6ba4qswWuhSgymzeGK5"
}

resource "segment_destination_subscription" "id-65c26de548cbf95103659557_6pj6ba4qswWuhSgymzeGK5" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "65c26de548cbf95103659557"
  enabled              = true
  model_id             = null
  name                 = "Send"
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
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/59394595-becc-4fe5-bd11-cebdae08770d"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2c0ra9VyDrtjPXxDwFLZsYQaDxs\""
}
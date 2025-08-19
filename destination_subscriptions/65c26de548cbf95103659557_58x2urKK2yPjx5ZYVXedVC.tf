import {
  to = segment_destination_subscription.id-65c26de548cbf95103659557_58x2urKK2yPjx5ZYVXedVC
  id = "65c26de548cbf95103659557:58x2urKK2yPjx5ZYVXedVC"
}

resource "segment_destination_subscription" "id-65c26de548cbf95103659557_58x2urKK2yPjx5ZYVXedVC" {
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
    url             = "https://webhook.site/9cd5c340-e0e4-4866-9d06-5b252dafc309"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2c103puPh2VgnFpmCOz52w0XkfF\""
}
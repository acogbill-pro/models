import {
  to = segment_destination_subscription.id-65c26de548cbf95103659557_t62iGduEEXrcxbxpRTrYmm
  id = "65c26de548cbf95103659557:t62iGduEEXrcxbxpRTrYmm"
}

resource "segment_destination_subscription" "id-65c26de548cbf95103659557_t62iGduEEXrcxbxpRTrYmm" {
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
    url             = "https://webhook.site/c23936c4-b5e3-4b76-b9a9-cdcb2deaf253"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2c0hc3vFgKopK2fACcw1h81tAQY\""
}
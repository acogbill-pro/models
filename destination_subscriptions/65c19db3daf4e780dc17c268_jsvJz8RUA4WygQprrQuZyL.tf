import {
  to = segment_destination_subscription.id-65c19db3daf4e780dc17c268_jsvJz8RUA4WygQprrQuZyL
  id = "65c19db3daf4e780dc17c268:jsvJz8RUA4WygQprrQuZyL"
}

resource "segment_destination_subscription" "id-65c19db3daf4e780dc17c268_jsvJz8RUA4WygQprrQuZyL" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "65c19db3daf4e780dc17c268"
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
    url             = "https://webhook.site/484c2a09-259f-40aa-a8fa-16e5e6fd2b7d"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2bye73fgcZBKCRhcnzpz3h05bXh\""
}
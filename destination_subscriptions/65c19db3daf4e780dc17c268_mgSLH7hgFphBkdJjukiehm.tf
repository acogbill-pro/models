import {
  to = segment_destination_subscription.id-65c19db3daf4e780dc17c268_mgSLH7hgFphBkdJjukiehm
  id = "65c19db3daf4e780dc17c268:mgSLH7hgFphBkdJjukiehm"
}

resource "segment_destination_subscription" "id-65c19db3daf4e780dc17c268_mgSLH7hgFphBkdJjukiehm" {
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
    url             = "https://webhook.site/993fc1fc-72b2-471d-91e4-ac7322bc9fa7"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2byg1pblUlgi6uIzeTNJhdvYx00\""
}
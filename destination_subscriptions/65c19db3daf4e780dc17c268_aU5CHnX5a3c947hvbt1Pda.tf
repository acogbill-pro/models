import {
  to = segment_destination_subscription.id-65c19db3daf4e780dc17c268_aU5CHnX5a3c947hvbt1Pda
  id = "65c19db3daf4e780dc17c268:aU5CHnX5a3c947hvbt1Pda"
}

resource "segment_destination_subscription" "id-65c19db3daf4e780dc17c268_aU5CHnX5a3c947hvbt1Pda" {
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
    url             = "https://webhook.site/acd30949-31a9-4467-83b7-529bb831147e"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2byWVOY0RhHAmce2wBJlaHi7YBt\""
}
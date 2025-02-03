import {
  to = segment_destination_subscription.id-663a34d5922b787679bacb11_d84Tuu6LJ5vmeS88Po8AaM
  id = "663a34d5922b787679bacb11:d84Tuu6LJ5vmeS88Po8AaM"
}

resource "segment_destination_subscription" "id-663a34d5922b787679bacb11_d84Tuu6LJ5vmeS88Po8AaM" {
  action_id      = "kp6oMyKQbaeqt6TcwFJop9"
  destination_id = "663a34d5922b787679bacb11"
  enabled        = false
  model_id       = null
  name           = "Post Message - product enters audience"
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
    channel  = ""
    icon_url = "https://logo.clearbit.com/segment.com"
    text = {
      "@template" = "Issue with {{properties.unhappy_with_first_order_high_value_entity_context.0.review_with_sentiment.0.__children.product.0.NAME}}: {{properties.unhappy_with_first_order_high_value_entity_context.0.review_with_sentiment.0.REVIEW}}"
    }
    url      = "https://hooks.slack.com/services/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"
    username = "Segment"
  })
  trigger = "context.personas.event_emitter_id = \"ee_2g93kbbjoXEyrvM2LGv2fWwVzL4\""
}
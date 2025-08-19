import {
  to = segment_destination_subscription.id-684713274f05b80929f111c6_ciA25YwDbjDv1f6ftCjpiL
  id = "684713274f05b80929f111c6:ciA25YwDbjDv1f6ftCjpiL"
}

resource "segment_destination_subscription" "id-684713274f05b80929f111c6_ciA25YwDbjDv1f6ftCjpiL" {
  action_id            = "2NyqxNN5TGJa1CP5xEYeLu"
  destination_id       = "684713274f05b80929f111c6"
  enabled              = false
  model_id             = null
  name                 = "Send Email with Dynamic Template - Profile en"
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
    to = {
      email = {
        "@path" = "$.properties.email"
      }
      name = {
        "@path" = "$.properties.name"
      }
    }
  })
  trigger = "context.personas.event_emitter_id = \"ee_2yHQ2Nk8jrKgiMhZT5cJvdLJ9ou\""
}
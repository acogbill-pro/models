import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_gyhKNJft38XbuZnp3FkKCa
  id = "6530724d161d3762ca84b7f9:gyhKNJft38XbuZnp3FkKCa"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_gyhKNJft38XbuZnp3FkKCa" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "6530724d161d3762ca84b7f9"
  enabled              = true
  model_id             = null
  name                 = "Custom Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    clientId = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    engagement_time_msec = 1
    lowercase            = false
    name = {
      "@path" = "$.event"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\""
}
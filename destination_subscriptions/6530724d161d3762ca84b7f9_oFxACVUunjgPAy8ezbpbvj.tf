import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_oFxACVUunjgPAy8ezbpbvj
  id = "6530724d161d3762ca84b7f9:oFxACVUunjgPAy8ezbpbvj"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_oFxACVUunjgPAy8ezbpbvj" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "6530724d161d3762ca84b7f9"
  enabled              = false
  model_id             = null
  name                 = "Increment"
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
    name                 = "Increment"
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"track\""
}
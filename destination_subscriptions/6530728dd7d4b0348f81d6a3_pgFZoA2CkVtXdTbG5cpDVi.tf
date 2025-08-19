import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_pgFZoA2CkVtXdTbG5cpDVi
  id = "6530728dd7d4b0348f81d6a3:pgFZoA2CkVtXdTbG5cpDVi"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_pgFZoA2CkVtXdTbG5cpDVi" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "6530728dd7d4b0348f81d6a3"
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
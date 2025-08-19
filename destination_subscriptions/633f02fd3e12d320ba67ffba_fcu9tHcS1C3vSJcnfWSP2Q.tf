import {
  to = segment_destination_subscription.id-633f02fd3e12d320ba67ffba_fcu9tHcS1C3vSJcnfWSP2Q
  id = "633f02fd3e12d320ba67ffba:fcu9tHcS1C3vSJcnfWSP2Q"
}

resource "segment_destination_subscription" "id-633f02fd3e12d320ba67ffba_fcu9tHcS1C3vSJcnfWSP2Q" {
  action_id            = "tNPRvBDTsfszvJQy6kE9K3"
  destination_id       = "633f02fd3e12d320ba67ffba"
  enabled              = false
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
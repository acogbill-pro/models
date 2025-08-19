import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_a41TmEfTZyBFvDp4bgPgyD
  id = "6530724d161d3762ca84b7f9:a41TmEfTZyBFvDp4bgPgyD"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_a41TmEfTZyBFvDp4bgPgyD" {
  action_id            = "pCFL7LEjS3hLGfaXEPQH3x"
  destination_id       = "6530724d161d3762ca84b7f9"
  enabled              = false
  model_id             = null
  name                 = "Login"
  reverse_etl_schedule = null
  settings = jsonencode({
    client_id = {
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
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"track\" and event = \"Signed In\""
}
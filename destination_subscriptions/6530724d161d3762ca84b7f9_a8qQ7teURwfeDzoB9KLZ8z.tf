import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_a8qQ7teURwfeDzoB9KLZ8z
  id = "6530724d161d3762ca84b7f9:a8qQ7teURwfeDzoB9KLZ8z"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_a8qQ7teURwfeDzoB9KLZ8z" {
  action_id            = "kJJRs3S5EiVC8At7GZt9nX"
  destination_id       = "6530724d161d3762ca84b7f9"
  enabled              = true
  model_id             = null
  name                 = "Registration"
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
    method = {
      "@path" = "$.properties.type"
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"track\" and event = \"User Registered\""
}
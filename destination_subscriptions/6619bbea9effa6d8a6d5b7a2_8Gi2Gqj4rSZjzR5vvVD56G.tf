import {
  to = segment_destination_subscription.id-6619bbea9effa6d8a6d5b7a2_8Gi2Gqj4rSZjzR5vvVD56G
  id = "6619bbea9effa6d8a6d5b7a2:8Gi2Gqj4rSZjzR5vvVD56G"
}

resource "segment_destination_subscription" "id-6619bbea9effa6d8a6d5b7a2_8Gi2Gqj4rSZjzR5vvVD56G" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6619bbea9effa6d8a6d5b7a2"
  enabled              = false
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@template" = "{{properties.braze_id}}"
    }
    email = {
      "@if" = {
        else = {
          "@template" = "{{properties.email}}"
        }
        exists = {
          "@template" = "{{context.traits.email}}"
        }
        then = {
          "@template" = "{{context.traits.email}}"
        }
      }
    }
    enable_batching = true
    external_id = {
      "@template" = "{{userId}}"
    }
    name = {
      "@template" = "{{event}}"
    }
    properties = {
      "@template" = "{{properties}}"
    }
    time = {
      "@template" = "{{receivedAt}}"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\""
}
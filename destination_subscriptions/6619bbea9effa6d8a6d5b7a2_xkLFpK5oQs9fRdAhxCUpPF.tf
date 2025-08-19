import {
  to = segment_destination_subscription.id-6619bbea9effa6d8a6d5b7a2_xkLFpK5oQs9fRdAhxCUpPF
  id = "6619bbea9effa6d8a6d5b7a2:xkLFpK5oQs9fRdAhxCUpPF"
}

resource "segment_destination_subscription" "id-6619bbea9effa6d8a6d5b7a2_xkLFpK5oQs9fRdAhxCUpPF" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6619bbea9effa6d8a6d5b7a2"
  enabled              = false
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and !contains(event, \" \")"
}
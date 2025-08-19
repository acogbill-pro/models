import {
  to = segment_destination_subscription.id-646f796d7b893ae9fbc060a5_hujrNmF6QAhPMebp4TWZsz
  id = "646f796d7b893ae9fbc060a5:hujrNmF6QAhPMebp4TWZsz"
}

resource "segment_destination_subscription" "id-646f796d7b893ae9fbc060a5_hujrNmF6QAhPMebp4TWZsz" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "646f796d7b893ae9fbc060a5"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
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
  trigger = "type = \"track\" and event != \"Order Completed\""
}
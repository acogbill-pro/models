import {
  to = segment_destination_subscription.id-6475e26e6c68f91e5121b229_kihgxrGvJ5oEXafPxz3LHT
  id = "6475e26e6c68f91e5121b229:kihgxrGvJ5oEXafPxz3LHT"
}

resource "segment_destination_subscription" "id-6475e26e6c68f91e5121b229_kihgxrGvJ5oEXafPxz3LHT" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "6475e26e6c68f91e5121b229"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    enable_batching = false
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
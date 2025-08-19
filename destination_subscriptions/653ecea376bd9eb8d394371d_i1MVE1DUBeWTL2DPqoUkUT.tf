import {
  to = segment_destination_subscription.id-653ecea376bd9eb8d394371d_i1MVE1DUBeWTL2DPqoUkUT
  id = "653ecea376bd9eb8d394371d:i1MVE1DUBeWTL2DPqoUkUT"
}

resource "segment_destination_subscription" "id-653ecea376bd9eb8d394371d_i1MVE1DUBeWTL2DPqoUkUT" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "653ecea376bd9eb8d394371d"
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
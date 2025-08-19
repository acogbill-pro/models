import {
  to = segment_destination_subscription.id-653ecea376bd9eb8d394371d_7JVdEHcLDNMgzzMKomRTLx
  id = "653ecea376bd9eb8d394371d:7JVdEHcLDNMgzzMKomRTLx"
}

resource "segment_destination_subscription" "id-653ecea376bd9eb8d394371d_7JVdEHcLDNMgzzMKomRTLx" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "653ecea376bd9eb8d394371d"
  enabled              = true
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    external_id = {
      "@path" = "$.userId"
    }
    products = {
      "@path" = "$.properties.products"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "event = \"Order Completed\""
}
import {
  to = segment_destination_subscription.id-6571dfc1a64a02093c7108f8_uQgaADVvhXXVRR7CvcGi4j
  id = "6571dfc1a64a02093c7108f8:uQgaADVvhXXVRR7CvcGi4j"
}

resource "segment_destination_subscription" "id-6571dfc1a64a02093c7108f8_uQgaADVvhXXVRR7CvcGi4j" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6571dfc1a64a02093c7108f8"
  enabled        = false
  model_id       = "eDiutxeTKfS77KPNVBtLxw"
  name           = "Entity subscription"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({})
  trigger  = "event = \"new\" or event = \"updated\" or event = \"deleted\""
}
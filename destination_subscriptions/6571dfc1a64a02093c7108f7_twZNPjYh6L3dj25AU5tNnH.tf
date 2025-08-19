import {
  to = segment_destination_subscription.id-6571dfc1a64a02093c7108f7_twZNPjYh6L3dj25AU5tNnH
  id = "6571dfc1a64a02093c7108f7:twZNPjYh6L3dj25AU5tNnH"
}

resource "segment_destination_subscription" "id-6571dfc1a64a02093c7108f7_twZNPjYh6L3dj25AU5tNnH" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6571dfc1a64a02093c7108f7"
  enabled        = false
  model_id       = "6EJ1eAzrZV2sCRuXydSGQw"
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
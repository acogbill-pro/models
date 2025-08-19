import {
  to = segment_destination_subscription.id-6679a323c02b0201862df435_kUiGNXyfv64gcnvBJuQacD
  id = "6679a323c02b0201862df435:kUiGNXyfv64gcnvBJuQacD"
}

resource "segment_destination_subscription" "id-6679a323c02b0201862df435_kUiGNXyfv64gcnvBJuQacD" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "6679a323c02b0201862df435"
  enabled        = false
  model_id       = "kkBLt5DPLr8A1Wj9C3Wfyo"
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
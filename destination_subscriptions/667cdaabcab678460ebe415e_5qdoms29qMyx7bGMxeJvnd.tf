import {
  to = segment_destination_subscription.id-667cdaabcab678460ebe415e_5qdoms29qMyx7bGMxeJvnd
  id = "667cdaabcab678460ebe415e:5qdoms29qMyx7bGMxeJvnd"
}

resource "segment_destination_subscription" "id-667cdaabcab678460ebe415e_5qdoms29qMyx7bGMxeJvnd" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "667cdaabcab678460ebe415e"
  enabled        = true
  model_id       = "75ZZgMAppYXrieRdeu6wqS"
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
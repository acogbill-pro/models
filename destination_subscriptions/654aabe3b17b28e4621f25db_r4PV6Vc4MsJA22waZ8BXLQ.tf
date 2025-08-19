import {
  to = segment_destination_subscription.id-654aabe3b17b28e4621f25db_r4PV6Vc4MsJA22waZ8BXLQ
  id = "654aabe3b17b28e4621f25db:r4PV6Vc4MsJA22waZ8BXLQ"
}

resource "segment_destination_subscription" "id-654aabe3b17b28e4621f25db_r4PV6Vc4MsJA22waZ8BXLQ" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "654aabe3b17b28e4621f25db"
  enabled        = true
  model_id       = "hz3M4deGLCWde1bFVHSx8r"
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
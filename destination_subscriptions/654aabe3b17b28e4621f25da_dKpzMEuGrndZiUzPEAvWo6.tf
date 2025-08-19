import {
  to = segment_destination_subscription.id-654aabe3b17b28e4621f25da_dKpzMEuGrndZiUzPEAvWo6
  id = "654aabe3b17b28e4621f25da:dKpzMEuGrndZiUzPEAvWo6"
}

resource "segment_destination_subscription" "id-654aabe3b17b28e4621f25da_dKpzMEuGrndZiUzPEAvWo6" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "654aabe3b17b28e4621f25da"
  enabled        = false
  model_id       = "rcwwU87R1M1AjS1AWshtCW"
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
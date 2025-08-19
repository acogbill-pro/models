import {
  to = segment_destination_subscription.id-661aca446f857b0d37d7762f_bG3nRdu5Jbe6jBF3Vb1Jay
  id = "661aca446f857b0d37d7762f:bG3nRdu5Jbe6jBF3Vb1Jay"
}

resource "segment_destination_subscription" "id-661aca446f857b0d37d7762f_bG3nRdu5Jbe6jBF3Vb1Jay" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "661aca446f857b0d37d7762f"
  enabled        = false
  model_id       = "2CTLr9qk3ZBJ2bUoY6kdQn"
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
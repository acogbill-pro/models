import {
  to = segment_destination_subscription.id-641c74b8a4974b4c0c208625_qGYS6q27TFsQX1P4PfUCFK
  id = "641c74b8a4974b4c0c208625:qGYS6q27TFsQX1P4PfUCFK"
}

resource "segment_destination_subscription" "id-641c74b8a4974b4c0c208625_qGYS6q27TFsQX1P4PfUCFK" {
  action_id      = "aBewyE4ZvDoZGMCWKQuhy3"
  destination_id = "641c74b8a4974b4c0c208625"
  enabled        = false
  model_id       = "wXXEQRpqwDKRjmu1GAS9RU"
  name           = "Create Contact"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    contactKey = {
      "@path" = "$.__segment_id"
    }
  })
  trigger = "event = \"updated\""
}
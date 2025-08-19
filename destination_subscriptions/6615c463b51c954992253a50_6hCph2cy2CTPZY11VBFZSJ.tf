import {
  to = segment_destination_subscription.id-6615c463b51c954992253a50_6hCph2cy2CTPZY11VBFZSJ
  id = "6615c463b51c954992253a50:6hCph2cy2CTPZY11VBFZSJ"
}

resource "segment_destination_subscription" "id-6615c463b51c954992253a50_6hCph2cy2CTPZY11VBFZSJ" {
  action_id      = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id = "6615c463b51c954992253a50"
  enabled        = true
  model_id       = "cuizsVWzAtV2fDc8MUKZBx"
  name           = "Upsert User"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    dataFields = {
      "@path" = "$.properties"
    }
    email = {
      "@path" = "$.properties.email"
    }
    userId = {
      "@path" = "$.properties.userid"
    }
  })
  trigger = "event = \"new\""
}
import {
  to = segment_destination_subscription.id-66145ac52add14eaf2f0514b_gPLxLi93di7949EG6SKenu
  id = "66145ac52add14eaf2f0514b:gPLxLi93di7949EG6SKenu"
}

resource "segment_destination_subscription" "id-66145ac52add14eaf2f0514b_gPLxLi93di7949EG6SKenu" {
  action_id      = "ujsJxBdpg7XkYwKSKREnQt"
  destination_id = "66145ac52add14eaf2f0514b"
  enabled        = false
  model_id       = "2hpJqufZuw4q27i9XZTYHP"
  name           = "Send Track"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "1h"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    consent = {
      "@path" = "$.context.consent"
    }
    engage_space = "spa_9wksRKPYwwkNvgrkqfdyey"
    event_name   = "Order Completed"
    message_id = {
      "@path" = "$.messageId"
    }
    properties = {
      "order date" = {
        "@path" = "$.properties.orderdate"
      }
      "total amount" = {
        "@path" = "$.properties.totalamount"
      }
    }
    user_id = {
      "@path" = "$.properties.rewardid"
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}
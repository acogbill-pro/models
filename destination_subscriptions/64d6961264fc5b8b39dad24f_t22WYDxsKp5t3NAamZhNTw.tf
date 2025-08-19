import {
  to = segment_destination_subscription.id-64d6961264fc5b8b39dad24f_t22WYDxsKp5t3NAamZhNTw
  id = "64d6961264fc5b8b39dad24f:t22WYDxsKp5t3NAamZhNTw"
}

resource "segment_destination_subscription" "id-64d6961264fc5b8b39dad24f_t22WYDxsKp5t3NAamZhNTw" {
  action_id      = "5DAMQ5qUaF2rZoyVNiReCa"
  destination_id = "64d6961264fc5b8b39dad24f"
  enabled        = true
  model_id       = "a5zu4vDwJL7GsnBFKf1qzy"
  name           = "Contact"
  reverse_etl_schedule = {
    config = jsonencode({
      interval = "15m"
    })
    strategy = "PERIODIC"
  }
  settings = jsonencode({
    account_id = "001Hu00002wb9K0IAI"
    batch_size = "5000"
    customFields = {
      DWH_Validated__c = {
        "@path" = "$.properties.DWH_VALIDATED"
      }
      User_ID__c = {
        "@path" = "$.properties.ID"
      }
    }
    email = {
      "@path" = "$.properties.EMAIL"
    }
    enable_batching       = false
    first_name            = "First"
    last_name             = "Last"
    operation             = "upsert"
    recordMatcherOperator = "OR"
    traits = {
      Email = {
        "@path" = "$.properties.EMAIL"
      }
    }
  })
  trigger = "event = \"new\" or event = \"updated\""
}
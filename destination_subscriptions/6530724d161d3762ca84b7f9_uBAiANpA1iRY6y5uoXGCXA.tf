import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_uBAiANpA1iRY6y5uoXGCXA
  id = "6530724d161d3762ca84b7f9:uBAiANpA1iRY6y5uoXGCXA"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_uBAiANpA1iRY6y5uoXGCXA" {
  action_id            = "oGFAmcDLQd8UakhEf1pAGA"
  destination_id       = "6530724d161d3762ca84b7f9"
  enabled              = true
  model_id             = null
  name                 = "View Cart"
  reverse_etl_schedule = null
  settings = jsonencode({
    client_id = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
    }
    currency = {
      "@path" = "$.properties.currency"
    }
    engagement_time_msec = 1
    items = {
      "@arrayPath" = [{
        "@path" = "$.properties.products"
        }, {
        currency = "USD"
        item_category = {
          "@path" = "$.category"
        }
        item_id = "SKU"
        item_name = {
          "@path" = "$.name"
        }
        item_variant = {
          "@path" = "$.variant"
        }
        price = "priceUSD"
        quantity = {
          "@path" = "$.quantity"
        }
      }]
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    user_id = "user_id"
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event = \"Cart Opened\""
}
import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_3JTc5fbXkhBR5CmiVj8FBV
  id = "6530728dd7d4b0348f81d6a3:3JTc5fbXkhBR5CmiVj8FBV"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_3JTc5fbXkhBR5CmiVj8FBV" {
  action_id            = "6CHmQRmGR9QiQAAVPzukE9"
  destination_id       = "6530728dd7d4b0348f81d6a3"
  enabled              = true
  model_id             = null
  name                 = "Add to Cart"
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
        "@path" = "$.properties"
        }, {
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
        price = {
          "@path" = "$.priceUSD"
        }
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
  trigger = "type = \"track\" and event = \"Product Added to Cart\""
}
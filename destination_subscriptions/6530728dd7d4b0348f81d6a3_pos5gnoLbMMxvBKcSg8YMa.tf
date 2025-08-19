import {
  to = segment_destination_subscription.id-6530728dd7d4b0348f81d6a3_pos5gnoLbMMxvBKcSg8YMa
  id = "6530728dd7d4b0348f81d6a3:pos5gnoLbMMxvBKcSg8YMa"
}

resource "segment_destination_subscription" "id-6530728dd7d4b0348f81d6a3_pos5gnoLbMMxvBKcSg8YMa" {
  action_id            = "6CHmQRmGR9QiQAAVPzukE9"
  destination_id       = "6530728dd7d4b0348f81d6a3"
  enabled              = false
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
        affiliation = {
          "@path" = "$.affiliation"
        }
        coupon = {
          "@path" = "$.coupon"
        }
        item_brand = {
          "@path" = "$.brand"
        }
        item_category = {
          "@path" = "$.category"
        }
        item_id = {
          "@path" = "$.product_id"
        }
        item_name = {
          "@path" = "$.name"
        }
        item_variant = {
          "@path" = "$.variant"
        }
        price = {
          "@path" = "$.price"
        }
        quantity = {
          "@path" = "$.quantity"
        }
      }]
    }
    timestamp_micros = {
      "@path" = "$.timestamp"
    }
    value = {
      "@path" = "$.properties.value"
    }
  })
  trigger = "type = \"track\" and event = \"Product Added\""
}
import {
  to = segment_destination_subscription.id-653ecee488d8b39d6c77c12c_iyVpUqwhQnbtorhVC8oEJe
  id = "653ecee488d8b39d6c77c12c:iyVpUqwhQnbtorhVC8oEJe"
}

resource "segment_destination_subscription" "id-653ecee488d8b39d6c77c12c_iyVpUqwhQnbtorhVC8oEJe" {
  action_id            = "xBj1Vpdp5BWErfezRDxczN"
  destination_id       = "653ecee488d8b39d6c77c12c"
  enabled              = false
  model_id             = null
  name                 = "Select Item"
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
    data_stream_type     = "Web"
    engagement_time_msec = 1
    items = {
      "@arrayPath" = ["$.properties", {
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
  })
  trigger = "type = \"track\" and event = \"Product Clicked\""
}
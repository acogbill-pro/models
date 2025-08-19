import {
  to = segment_destination_subscription.id-6530724d161d3762ca84b7f9_wx6LHNreeiVPajn6VCXaBj
  id = "6530724d161d3762ca84b7f9:wx6LHNreeiVPajn6VCXaBj"
}

resource "segment_destination_subscription" "id-6530724d161d3762ca84b7f9_wx6LHNreeiVPajn6VCXaBj" {
  action_id            = "xBj1Vpdp5BWErfezRDxczN"
  destination_id       = "6530724d161d3762ca84b7f9"
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
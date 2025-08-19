import {
  to = segment_destination_subscription.id-634961fe8bc12903201f731b_u9w9kZk1XMRo4xUJQAcKRD
  id = "634961fe8bc12903201f731b:u9w9kZk1XMRo4xUJQAcKRD"
}

resource "segment_destination_subscription" "id-634961fe8bc12903201f731b_u9w9kZk1XMRo4xUJQAcKRD" {
  action_id            = "uhprCN3Pc9fjb89v4xDrfP"
  destination_id       = "634961fe8bc12903201f731b"
  enabled              = true
  model_id             = null
  name                 = "Screen Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    adid = {
      "@if" = {
        else = {
          "@path" = "$.context.device.idfa"
        }
        exists = {
          "@path" = "$.context.device.advertisingId"
        }
        then = {
          "@path" = "$.context.device.advertisingId"
        }
      }
    }
    app_version = {
      "@path" = "$.context.app.version"
    }
    carrier = {
      "@path" = "$.context.network.carrier"
    }
    city = {
      "@path" = "$.context.location.city"
    }
    country = {
      "@path" = "$.context.location.country"
    }
    device_brand = {
      "@path" = "$.context.device.brand"
    }
    device_id = {
      "@if" = {
        else = {
          "@path" = "$.anonymousId"
        }
        exists = {
          "@path" = "$.context.device.id"
        }
        then = {
          "@path" = "$.context.device.id"
        }
      }
    }
    device_manufacturer = {
      "@path" = "$.context.device.manufacturer"
    }
    device_model = {
      "@path" = "$.context.device.model"
    }
    event_properties = {
      "@path" = "$.properties"
    }
    event_type = {
      "@template" = "Viewed {{name}}"
    }
    idfa = {
      "@if" = {
        else = {
          "@path" = "$.context.device.idfa"
        }
        exists = {
          "@path" = "$.context.device.advertisingId"
        }
        then = {
          "@path" = "$.context.device.advertisingId"
        }
      }
    }
    idfv = {
      "@path" = "$.context.device.id"
    }
    ip = {
      "@path" = "$.context.ip"
    }
    language = {
      "@path" = "$.context.locale"
    }
    library = {
      "@path" = "$.context.library.name"
    }
    location_lat = {
      "@path" = "$.context.location.latitude"
    }
    location_lng = {
      "@path" = "$.context.location.longitude"
    }
    os_name = {
      "@path" = "$.context.os.name"
    }
    os_version = {
      "@path" = "$.context.os.version"
    }
    platform = {
      "@path" = "$.context.device.type"
    }
    price = {
      "@path" = "$.properties.price"
    }
    productId = {
      "@path" = "$.properties.productId"
    }
    products = {
      "@arrayPath" = ["$.properties.products", {
        price = {
          "@path" = "price"
        }
        productId = {
          "@path" = "productId"
        }
        quantity = {
          "@path" = "quantity"
        }
        revenue = {
          "@path" = "revenue"
        }
        revenueType = {
          "@path" = "revenueType"
        }
      }]
    }
    quantity = {
      "@path" = "$.properties.quantity"
    }
    region = {
      "@path" = "$.context.location.region"
    }
    revenue = {
      "@path" = "$.properties.revenue"
    }
    revenueType = {
      "@path" = "$.properties.revenueType"
    }
    session_id = {
      "@path" = "$.integrations.Actions Amplitude.session_id"
    }
    setAlways = {
      referrer = {
        "@path" = "$.context.page.referrer"
      }
      utm_campaign = {
        "@path" = "$.context.campaign.name"
      }
      utm_content = {
        "@path" = "$.context.campaign.content"
      }
      utm_medium = {
        "@path" = "$.context.campaign.medium"
      }
      utm_source = {
        "@path" = "$.context.campaign.source"
      }
      utm_term = {
        "@path" = "$.context.campaign.term"
      }
    }
    setOnce = {
      initial_referrer = {
        "@path" = "$.context.page.referrer"
      }
      initial_utm_campaign = {
        "@path" = "$.context.campaign.name"
      }
      initial_utm_content = {
        "@path" = "$.context.campaign.content"
      }
      initial_utm_medium = {
        "@path" = "$.context.campaign.medium"
      }
      initial_utm_source = {
        "@path" = "$.context.campaign.source"
      }
      initial_utm_term = {
        "@path" = "$.context.campaign.term"
      }
    }
    time = {
      "@path" = "$.timestamp"
    }
    use_batch_endpoint = false
    userAgent = {
      "@path" = "$.context.userAgent"
    }
    userAgentParsing = true
    user_id = {
      "@path" = "$.userId"
    }
    user_properties = {
      "@path" = "$.traits"
    }
  })
  trigger = "type = \"screen\""
}
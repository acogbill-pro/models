import {
  to = segment_destination_subscription.id-64db9aee59546b26ad8e96ad_sVm8FYxiNjEahM6n5qYr32
  id = "64db9aee59546b26ad8e96ad:sVm8FYxiNjEahM6n5qYr32"
}

resource "segment_destination_subscription" "id-64db9aee59546b26ad8e96ad_sVm8FYxiNjEahM6n5qYr32" {
  action_id            = "tx1U1iQjRFNAXgmfLWwEpi"
  destination_id       = "64db9aee59546b26ad8e96ad"
  enabled              = true
  model_id             = null
  name                 = "Set Attributes"
  reverse_etl_schedule = null
  settings = jsonencode({
    attributes = {
      account_creation = {
        "@path" = "$.traits.account_creation"
      }
      advertising_id = {
        "@path" = "$.context.device.advertisingId"
      }
      age = {
        "@path" = "$.traits.age"
      }
      altitude = {
        "@path" = "$.traits.altitude"
      }
      birthdate = {
        "@path" = "$.traits.birthday"
      }
      city = {
        "@path" = "$.traits.address.city"
      }
      company = {
        "@path" = "$.traits.company_name"
      }
      country = {
        "@path" = "$.traits.address.country"
      }
      email = {
        "@path" = "$.traits.email"
      }
      first_name = {
        "@path" = "$.traits.first_name"
      }
      full_name = {
        "@path" = "$.traits.full_name"
      }
      gender = {
        "@path" = "$.traits.gender"
      }
      home_phone = {
        "@path" = "$.traits.home_phone"
      }
      last_name = {
        "@path" = "$.traits.last_name"
      }
      latitude = {
        "@path" = "$.traits.latitude"
      }
      longitude = {
        "@path" = "$.traits.longitude"
      }
      loyalty_tier = {
        "@path" = "$.traits.loyalty_tier"
      }
      mobile_phone = {
        "@path" = "$.traits.phone"
      }
      region = {
        "@path" = "$.traits.address.region"
      }
      title = {
        "@path" = "$.traits.title"
      }
      username = {
        "@path" = "$.traits.username"
      }
      work_phone = {
        "@path" = "$.traits.work_phone"
      }
      zipcode = {
        "@path" = "$.traits.address.postalCode"
      }
    }
    named_user_id = {
      "@path" = "$.userId"
    }
    occurred = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"identify\""
}
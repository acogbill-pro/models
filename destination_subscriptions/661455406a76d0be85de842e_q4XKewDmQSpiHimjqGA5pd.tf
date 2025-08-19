import {
  to = segment_destination_subscription.id-661455406a76d0be85de842e_q4XKewDmQSpiHimjqGA5pd
  id = "661455406a76d0be85de842e:q4XKewDmQSpiHimjqGA5pd"
}

resource "segment_destination_subscription" "id-661455406a76d0be85de842e_q4XKewDmQSpiHimjqGA5pd" {
  action_id            = "ifeXsLqNNjJ5HJdRKSJwea"
  destination_id       = "661455406a76d0be85de842e"
  enabled              = false
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    dataFields = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    mergeNestedObjects = false
    phoneNumber = {
      "@path" = "$.traits.phone"
    }
    userId = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"identify\""
}
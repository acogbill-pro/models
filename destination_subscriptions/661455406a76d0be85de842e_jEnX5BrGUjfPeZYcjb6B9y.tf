import {
  to = segment_destination_subscription.id-661455406a76d0be85de842e_jEnX5BrGUjfPeZYcjb6B9y
  id = "661455406a76d0be85de842e:jEnX5BrGUjfPeZYcjb6B9y"
}

resource "segment_destination_subscription" "id-661455406a76d0be85de842e_jEnX5BrGUjfPeZYcjb6B9y" {
  action_id            = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id       = "661455406a76d0be85de842e"
  enabled              = false
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    campaignId = {
      "@path" = "$.properties.campaignId"
    }
    createdAt = {
      "@path" = "$.timestamp"
    }
    dataFields = {
      "@path" = "$.properties"
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.context.traits.email"
        }
        exists = {
          "@path" = "$.properties.email"
        }
        then = {
          "@path" = "$.properties.email"
        }
      }
    }
    eventName = {
      "@path" = "$.event"
    }
    id = {
      "@path" = "$.messageId"
    }
    templateId = {
      "@path" = "$.properties.templateId"
    }
    userId = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\" and event != \"Cart Updated\""
}
import {
  to = segment_destination_subscription.id-6615b51b5a1b984233d052dd_3XMZSYRkWJczzyWtWmFrWs
  id = "6615b51b5a1b984233d052dd:3XMZSYRkWJczzyWtWmFrWs"
}

resource "segment_destination_subscription" "id-6615b51b5a1b984233d052dd_3XMZSYRkWJczzyWtWmFrWs" {
  action_id            = "3MrS3Se3PAaxL4wpQN93gA"
  destination_id       = "6615b51b5a1b984233d052dd"
  enabled              = true
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
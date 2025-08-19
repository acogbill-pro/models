import {
  to = segment_destination_subscription.id-652d50e38d869fd6e89f66e5_385nsJbbwxAAUr3TzjZ6gS
  id = "652d50e38d869fd6e89f66e5:385nsJbbwxAAUr3TzjZ6gS"
}

resource "segment_destination_subscription" "id-652d50e38d869fd6e89f66e5_385nsJbbwxAAUr3TzjZ6gS" {
  action_id            = "w71TA2NBTe31vEdejf99Jy"
  destination_id       = "652d50e38d869fd6e89f66e5"
  enabled              = false
  model_id             = null
  name                 = "Send Contact to Data Extension"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size      = 10
    enable_batching = false
    keys = {
      contactKey = {
        "@path" = "$.userId"
      }
    }
  })
  trigger = "type = \"identify\""
}
import {
  to = segment_destination_subscription.id-65c19db3daf4e780dc17c268_iHwnP72yUz8nHMzinQ8GwS
  id = "65c19db3daf4e780dc17c268:iHwnP72yUz8nHMzinQ8GwS"
}

resource "segment_destination_subscription" "id-65c19db3daf4e780dc17c268_iHwnP72yUz8nHMzinQ8GwS" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "65c19db3daf4e780dc17c268"
  enabled              = true
  model_id             = null
  name                 = "Send"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
    url             = "https://webhook.site/acd30949-31a9-4467-83b7-529bb831147e"
  })
  trigger = "type = \"track\" or type = \"identify\""
}
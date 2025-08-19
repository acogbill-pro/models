import {
  to = segment_destination_subscription.id-634961fe8bc12903201f731b_eqsX3dAvXkqWQe55yU73cj
  id = "634961fe8bc12903201f731b:eqsX3dAvXkqWQe55yU73cj"
}

resource "segment_destination_subscription" "id-634961fe8bc12903201f731b_eqsX3dAvXkqWQe55yU73cj" {
  action_id            = "nhJa95SA9MXa3hi2Vm2acC"
  destination_id       = "634961fe8bc12903201f731b"
  enabled              = true
  model_id             = null
  name                 = "Browser Session Tracking"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"track\" or type = \"identify\" or type = \"group\" or type = \"page\" or type = \"alias\""
}
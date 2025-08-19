import {
  to = segment_destination_subscription.id-653072b54b004cb1695d8c79_sLoNUmp3c6S3jS3d5CtqWM
  id = "653072b54b004cb1695d8c79:sLoNUmp3c6S3jS3d5CtqWM"
}

resource "segment_destination_subscription" "id-653072b54b004cb1695d8c79_sLoNUmp3c6S3jS3d5CtqWM" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "653072b54b004cb1695d8c79"
  enabled              = true
  model_id             = null
  name                 = "Track Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\""
}
import {
  to = segment_source.id-8pjrLEVXDhwAUQMQoCFdax
  id = "8pjrLEVXDhwAUQMQoCFdax"
}

resource "segment_source" "id-8pjrLEVXDhwAUQMQoCFdax" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Linked POC Events"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "linked_poc_events"
}
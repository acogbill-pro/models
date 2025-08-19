import {
  to = segment_source.id-8mbTKTwHcCyuNBodsPEyvF
  id = "8mbTKTwHcCyuNBodsPEyvF"
}

resource "segment_source" "id-8mbTKTwHcCyuNBodsPEyvF" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "Web App - Auto"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "web-app-auto"
}
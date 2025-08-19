import {
  to = segment_source.id-5J7w3WwSdRbQ8Q7nHkBixw
  id = "5J7w3WwSdRbQ8Q7nHkBixw"
}

resource "segment_source" "id-5J7w3WwSdRbQ8Q7nHkBixw" {
  enabled = false
  labels  = null
  metadata = {
    id = "2baks93n"
  }
  name = "Salesforce Source"
  settings = jsonencode({
    salesforce-environment = "production"
  })
  slug = "salesforce_source"
}
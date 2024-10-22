import {
  to = segment_source.id-qbSP12yRpPJim5e8vYDkW4
  id = "qbSP12yRpPJim5e8vYDkW4"
}

resource "segment_source" "id-qbSP12yRpPJim5e8vYDkW4" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "prod"
    },
  ]
  metadata = {
    id = "2baks93n"
  }
  name     = "Salesforce Profiles"
  settings = "{\"createdAt\":\"2024-10-22T19:31:49.191Z\",\"createdBy\":\"andy.cogbill@segment.com\",\"displayName\":\"andy.cogbill@segment.com\",\"instance-url\":\"https://twilio124-dev-ed.develop.my.salesforce.com\",\"salesforce-environment\":\"production\"}"
  slug     = "salesforce_profiles"
}
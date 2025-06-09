import {
  to = segment_destination.id-684713274f05b80929f111c6
  id = "684713274f05b80929f111c6"
}

resource "segment_destination" "id-684713274f05b80929f111c6" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "631a6f32946dd8197e9cab66"
    partner_owned     = true
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "SendGrid - Marketing Prod"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "684713274f05b80929f111c6"
    }
    endpoint       = "https://api.sendgrid.com"
    sendGridApiKey = "••••••••••lfYI"
  })
  source_id = "2TapZFYdqrQMgoXiU2JZCU"
}
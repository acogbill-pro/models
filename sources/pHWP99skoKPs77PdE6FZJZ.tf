import {
  to = segment_source.id-pHWP99skoKPs77PdE6FZJZ
  id = "pHWP99skoKPs77PdE6FZJZ"
}

resource "segment_source" "id-pHWP99skoKPs77PdE6FZJZ" {
  enabled = false
  labels  = null
  metadata = {
    id = "2baks93n"
  }
  name = "Salesforce 4"
  settings = jsonencode({
    salesforce-environment = "sandbox"
  })
  slug = "salesforce_4"
}
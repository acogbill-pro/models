import {
  to = segment_source.id-cWcsFs1Wme6c2jETf8M6Q
  id = "cWcsFs1Wme6c2jETf8M6Q"
}

resource "segment_source" "id-cWcsFs1Wme6c2jETf8M6Q" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "ARCH - Snowflake Solns_Eng"
  settings = jsonencode({
    account   = "segment"
    database  = "SOLUTIONS_SANDBOX"
    username  = "SOLUTIONS_ENG"
    warehouse = "SOLUTIONS"
  })
  slug = "snowflake_seg"
}
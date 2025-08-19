import {
  to = segment_source.id-6ug89BNDp2YUE5FDRbXJXc
  id = "6ug89BNDp2YUE5FDRbXJXc"
}

resource "segment_source" "id-6ug89BNDp2YUE5FDRbXJXc" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "Snowflake ACOGBILL_DEMO"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    database  = "ACOGBILL_DEMO"
    username  = "ACOGBILL"
    warehouse = "SEGMENT_WAREHOUSE"
  })
  slug = "snowflake_atpoc"
}
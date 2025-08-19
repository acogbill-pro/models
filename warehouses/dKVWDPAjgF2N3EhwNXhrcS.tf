import {
  to = segment_warehouse.id-dKVWDPAjgF2N3EhwNXhrcS
  id = "dKVWDPAjgF2N3EhwNXhrcS"
}

resource "segment_warehouse" "id-dKVWDPAjgF2N3EhwNXhrcS" {
  enabled = true
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "Snowflake ACOGBILL_DEMO"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    auth_type = "password_auth"
    database  = "ACOGBILL_DEMO"
    encrypted = true
    username  = "ACOGBILL"
    warehouse = "SEGMENT_WAREHOUSE"
  })
}
import {
  to = segment_reverse_etl_model.id-9APfcpgDLxcEhpFR5KzquX
  id = "9APfcpgDLxcEhpFR5KzquX"
}

resource "segment_reverse_etl_model" "id-9APfcpgDLxcEhpFR5KzquX" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-PETS"
  query                   = "SELECT * FROM SOLUTIONS_SANDBOX.MARKETING_EAST.PETS"
  query_identifier_column = "PETID"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}
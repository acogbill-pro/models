import {
  to = segment_reverse_etl_model.id-hz3M4deGLCWde1bFVHSx8r
  id = "hz3M4deGLCWde1bFVHSx8r"
}

resource "segment_reverse_etl_model" "id-hz3M4deGLCWde1bFVHSx8r" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-PRODUCTS"
  query                   = "SELECT SKU,NAME FROM SOLUTIONS_SANDBOX.MARKETING_EAST.PRODUCTS"
  query_identifier_column = "SKU"
  source_id               = "5nZ2D9s879h4Xc6YQhwh5v"
}
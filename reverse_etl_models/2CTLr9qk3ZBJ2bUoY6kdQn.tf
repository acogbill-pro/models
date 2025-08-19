import {
  to = segment_reverse_etl_model.id-2CTLr9qk3ZBJ2bUoY6kdQn
  id = "2CTLr9qk3ZBJ2bUoY6kdQn"
}

resource "segment_reverse_etl_model" "id-2CTLr9qk3ZBJ2bUoY6kdQn" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Review"
  query                   = "SELECT * FROM ACOGBILL_DEMO.SHOP_ENRICHED.PRODUCT_REVIEW"
  query_identifier_column = "ID"
  source_id               = "wLoTFxk9DuredsGx6ECmgJ"
}
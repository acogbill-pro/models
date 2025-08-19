import {
  to = segment_reverse_etl_model.id-ciQryB4NZ76RWKSrAnfQVb
  id = "ciQryB4NZ76RWKSrAnfQVb"
}

resource "segment_reverse_etl_model" "id-ciQryB4NZ76RWKSrAnfQVb" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Product"
  query                   = "SELECT SKU,CATEGORY,DESCRIPTION,NAME,PRICE_USD FROM ACOGBILL_DEMO.SHOP_SITE.PRODUCT_CATALOG"
  query_identifier_column = "SKU"
  source_id               = "wLoTFxk9DuredsGx6ECmgJ"
}
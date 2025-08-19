import {
  to = segment_reverse_etl_model.id-deS3vWsCVzETV1VFxRiQwm
  id = "deS3vWsCVzETV1VFxRiQwm"
}

resource "segment_reverse_etl_model" "id-deS3vWsCVzETV1VFxRiQwm" {
  description             = " "
  enabled                 = true
  name                    = "Orders from Shop_Site"
  query                   = "SELECT * FROM SHOP_SITE.ORDER_COMPLETED"
  query_identifier_column = "id"
  source_id               = "6ug89BNDp2YUE5FDRbXJXc"
}
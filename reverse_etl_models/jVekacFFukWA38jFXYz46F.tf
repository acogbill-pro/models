import {
  to = segment_reverse_etl_model.id-jVekacFFukWA38jFXYz46F
  id = "jVekacFFukWA38jFXYz46F"
}

resource "segment_reverse_etl_model" "id-jVekacFFukWA38jFXYz46F" {
  description             = "reviews"
  enabled                 = true
  name                    = "Reviews (DBT)"
  query                   = "select id, anonymous_id, coalesce(user_id,user) as user_id, \nCONCAT(id,'-',DATE_PART(epoch_second, CURRENT_TIMESTAMP())) as generated_id,\ntimestamp,\nproduct_name,\nproduct_description,\nproduct_category,\nPRODUCT_PRICE_USD as price,\ncontents as review,\nTO_NUMBER(ROUND(SNOWFLAKE.CORTEX.SENTIMENT(review)*100,0)) as sentiment_score\nfrom ACOGBILL_DEMO.SHOP_SITE.product_review"
  query_identifier_column = "generated_id"
  schedule_config         = "{}"
  schedule_strategy       = ""
  source_id               = "6ug89BNDp2YUE5FDRbXJXc"
}
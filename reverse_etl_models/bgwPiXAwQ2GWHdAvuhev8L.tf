import {
  to = segment_reverse_etl_model.id-bgwPiXAwQ2GWHdAvuhev8L
  id = "bgwPiXAwQ2GWHdAvuhev8L"
}

resource "segment_reverse_etl_model" "id-bgwPiXAwQ2GWHdAvuhev8L" {
  description             = " "
  enabled                 = true
  name                    = "Product Reviews with Snowflake Sentiment"
  query                   = "select id, anonymous_id, user_id, \ntimestamp,\nproduct_name,\nproduct_description,\nproduct_category,\ncontents as review,\nTO_NUMBER(ROUND(SNOWFLAKE.CORTEX.SENTIMENT(review)*100,0)) as sentiment_score,\n-- SNOWFLAKE.CORTEX.SUMMARIZE(review) as summary,\n-- GET(SNOWFLAKE.CORTEX.COMPLETE(\n-- 'mistral-7b',\n--      [\n--           {'role': 'system', 'content': 'You are a helpful AI assistant. Analyze the product review text and determine if the user would buy the product again. Answer with just \\\"TRUE\\\", \\\"FALSE\\\", or \\\"NULL\\\"'},\n--           {'role': 'user', 'content': review}\n--      ],\n--      {'temperature': 0.1}):choices,0):messages as will_buy_again\nfrom ACOGBILL_DEMO.SHOP_SITE.product_review;"
  query_identifier_column = "id"
  schedule_config         = "{}"
  schedule_strategy       = ""
  source_id               = "6ug89BNDp2YUE5FDRbXJXc"
}
select id, anonymous_id, user_id, 
timestamp,
product_name,
product_description,
product_category,
contents as review,
TO_NUMBER(ROUND(SNOWFLAKE.CORTEX.SENTIMENT(review)*100,0)) as sentiment_score,
-- SNOWFLAKE.CORTEX.SUMMARIZE(review) as summary,
-- GET(SNOWFLAKE.CORTEX.COMPLETE(
-- 'mistral-7b',
--      [
--           {'role': 'system', 'content': 'You are a helpful AI assistant. Analyze the product review text and determine if the user would buy the product again. Answer with just \"TRUE\", \"FALSE\", or \"NULL\"'},
--           {'role': 'user', 'content': review}
--      ],
--      {'temperature': 0.1}):choices,0):messages as will_buy_again
from ACOGBILL_DEMO.SHOP_SITE.product_review;
WITH funnel_counts AS (
  SELECT
    device.deviceCategory AS device_type,
    COUNT(DISTINCT fullVisitorId) AS total_sessions,
    COUNT(DISTINCT CASE WHEN hit.eCommerceAction.action_type = '3' THEN fullVisitorId END) AS added_to_cart,
    COUNT(DISTINCT CASE WHEN hit.eCommerceAction.action_type = '6' THEN fullVisitorId END) AS purchased
  FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
    UNNEST(hits) AS hit
  WHERE
    _TABLE_SUFFIX BETWEEN '20170701' AND '20170731'
  GROUP BY device_type
)
SELECT
  device_type,
  total_sessions,
  added_to_cart,
  purchased,
  ROUND(purchased / added_to_cart * 100, 2) AS cart_to_purchase_rate
FROM funnel_counts
ORDER BY cart_to_purchase_rate ASC

SELECT
  COUNT(*) AS total_orders,
  SUM(hulunet_assets.spend) AS total_spent_last_30_days
FROM
  hulunet_orders
  LEFT JOIN hulunet_assets ON hulunet_orders.id = hulunet_assets.id
WHERE
  hulunet_orders.date >= NOW () - INTERVAL '30 days';
SELECT
  date,
  COUNT(*) OVER (ORDER BY date ASC) AS cumulative_order_count
FROM hulunet_orders
ORDER BY date ASC;

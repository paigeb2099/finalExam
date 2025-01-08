SELECT
  date,
  COUNT(*) OVER (ORDER BY date ASC) AS cumulative_order_count
FROM hulunet_orders_pb
ORDER BY date ASC;

SELECT
  COUNT(
    CASE
      WHEN order_type = 'From existing asset' THEN 1
    END
  ) AS existing_asset,
  COUNT(
    CASE
      WHEN order_type = 'New' THEN 1
    END
  ) AS NEW
FROM
  hulunet_orders
WHERE
  order_type IN ('From existing asset', 'New')
  AND DATE >= NOW () - INTERVAL '30 days';
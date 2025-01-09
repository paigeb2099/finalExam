SELECT
  asset_type,
  SUM(money) AS total_budget_spent
FROM hulunet_asset_management_pb
WHERE asset_type IN ('Trailer', 'Social Media Post', 'Clip', 'Art')
GROUP BY asset_type;
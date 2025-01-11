SELECT
  type,
  SUM(spend) AS total_budget_spent
FROM hulunet_assets
WHERE type IN ('Trailer', 'Social Media Post', 'Clip', 'Art', 'Billboard')
GROUP BY type;
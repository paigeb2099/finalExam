SELECT
  type,
  COUNT(*) AS COUNT,
  SUM(spend) AS total_budget_spent
FROM
  hulunet_assets
WHERE
  type IN (
    'Trailer',
    'Social Media Post',
    'Video Clip',
    'Art',
    'Billboard'
  )
GROUP BY
  type;
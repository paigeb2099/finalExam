SELECT
  *
FROM
  hulunet_assets
WHERE
  (
  type = {{ select1.value}} 
  )
ORDER BY
  id ASC
LIMIT
  {{ table1.pagination.pageSize }}
OFFSET
  {{ table1.pagination.offset }}
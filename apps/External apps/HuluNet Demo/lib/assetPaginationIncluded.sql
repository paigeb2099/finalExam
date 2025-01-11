SELECT
  *
FROM
  hulunet_assets
WHERE
  (
    name ILIKE '%' || {{ textInput1.value }} || '%'
    OR media ILIKE '%' || {{ textInput1.value }} || '%'
    OR country ILIKE '%' || {{ textInput1.value }} || '%'
    OR language ILIKE '%' || {{ textInput1.value }} || '%'
    OR description ILIKE '%' || {{ textInput1.value }} || '%'
    OR type ILIKE '%' || {{ textInput1.value }} || '%'

  )
ORDER BY
  id ASC
LIMIT
  {{ table1.pagination.pageSize }}
OFFSET
  {{ table1.pagination.offset }}
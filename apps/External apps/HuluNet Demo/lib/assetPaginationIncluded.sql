SELECT
  *
FROM
  hulunet_assets
WHERE
  (
    (
      name ILIKE '%' || {{ textInput1.value }} || '%'
      OR media ILIKE '%' || {{ textInput1.value }} || '%'
      OR country ILIKE '%' || {{ textInput1.value }} || '%'
      OR language ILIKE '%' || {{ textInput1.value }} || '%'
      OR description ILIKE '%' || {{ textInput1.value }} || '%'
      OR type ILIKE '%' || {{ textInput1.value }} || '%'
    )
    AND (
      {{ select1.value }}::text IS NULL
      OR type = {{ select1.value }}::text
    )
  )
ORDER BY
  id ASC
LIMIT
  {{ table1.pagination.pageSize }}
OFFSET
  {{ table1.pagination.offset }}
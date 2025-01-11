select
 *
from
  hulunet_assets
order by
  id
limit
  {{ table1.pagination.pageSize }} 
offset 
  {{ table1.pagination.offset }}
with orderstatus as (select * from {{ ref("int_dim_orderstatus") }}) 

select * 
from orderstatus

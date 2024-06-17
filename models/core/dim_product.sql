with product as (select * from {{ ref("int_dim_product") }}) 

select * 
from product

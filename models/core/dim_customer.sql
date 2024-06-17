with customer as (select * from {{ ref("int_dim_customer") }}) 

select * 
from customer

with sales as (select * from {{ ref("int_fact_sales") }}) 

select * 
from sales

with sales as (select * from {{ ref("int_fact_sales") }}) 

select *,
--test 
from sales

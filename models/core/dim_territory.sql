with territory as (select * from {{ ref("int_dim_territory") }}) 

select * 
from territory

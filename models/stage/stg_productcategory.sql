with
    source as (select * from {{ source("raw_product", "productcategory") }}),
    renamed as (

        select
            rowguid,
            modifieddate,
            cast(name as varchar(50)) as productcategory,
            productcategoryid
        from source
    )

select *
from renamed

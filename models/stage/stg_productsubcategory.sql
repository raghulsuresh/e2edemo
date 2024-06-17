with
    source as (select * from {{ source("raw_product", "productsubcategory") }}),
    renamed as (

        select
            rowguid,
            modifieddate,
            productcategoryid,
            cast(name as varchar(50)) as productsubcategory,
            productsubcategoryid
        from source
    )

select *
from renamed

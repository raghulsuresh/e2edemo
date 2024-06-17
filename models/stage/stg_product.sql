with
    source as (select * from {{ source("raw_product", "product") }}),
    renamed as (

        select
            size,
            class,
            color,
            style,
            weight,
            rowguid,
            listprice,
            productid,
            productline,
            cast(name as varchar(50)) as productname,
            sellenddate as sellenddate,
            modifieddate,
            reorderpoint,
            standardcost,
            productnumber,
            sellstartdate as sellstartdate,
            productmodelid,
            discontinueddate,
            safetystocklevel,
            daystomanufacture,
            sizeunitmeasurecode,
            productsubcategoryid
        from source
    )

select *
from renamed

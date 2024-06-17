with
    source as (select * from {{ source("raw_sales", "salesterritory") }}),
    renamed as (

        select
            "GROUP",
            costytd,
            rowguid,
            salesytd,
            territoryid,
            costlastyear,
            modifieddate,
            saleslastyear,
            countryregioncode,
            cast(name as varchar(50)) as salesterritoryname
        from source
    )

select *
from renamed

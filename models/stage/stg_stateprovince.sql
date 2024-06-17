with
    source as (select * from {{ source("raw_person", "stateprovince") }}),
    renamed as (

        select
            rowguid,
            territoryid,
            modifieddate,
            stateprovinceid,
            cast(name as varchar(50)) as statprovincename,
            countryregioncode,
            stateprovincecode
        from source
    )

select *
from renamed

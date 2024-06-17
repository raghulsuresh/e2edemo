with source as (

    select * from {{ source('raw_person', 'countryregion') }}
),
renamed as (

    select 
        modifieddate,
        countryregioncode,
        name as countryregionname
    from source
)

select * from renamed
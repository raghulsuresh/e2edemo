with source as (

    select * from {{ source('raw_person', 'businessentityaddress') }}
),
renamed as (

    select 
        addresstypeid, 
        businessentityid, 
        modifieddate, 
        addressid
    from source
)

select * from renamed
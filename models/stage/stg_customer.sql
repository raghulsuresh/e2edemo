with source as (

    select * from {{ source('raw_sales', 'customer') }}
),
renamed as (

    select 
        storeid,
        rowguid,
        personid,
        customerid,
        territoryid,
        modifieddate,
        accountnumber
    from source
)

select * from renamed
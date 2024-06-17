with
    source as (select * from {{ source("raw_sales", "salesorderheader") }}),
    renamed as (

        select
            status,
            case when onlineorderflag = 1 then 'Y' else 'N' end as onlineorderflag,
            taxamt,
            cast(purchaseordernumber as varchar(25)) as purchaseordernumber,
            "COMMENT",  -- First letter is uppercase therefore in double quoutes
            duedate::timestamp as duedate,
            freight,
            rowguid,
            shipdate::timestamp as shipdate,
            subtotal,
            totaldue,
            orderdate::timestamp as orderdate,
            customerid,
            territoryid,
            creditcardid,
            modifieddate,
            salesorderid,
            shipmethodid,
            salespersonid,
            currencyrateid,
            revisionnumber,
            billtoaddressid,
            shiptoaddressid,
            salesordernumber,
            creditcardapprovalcode
        from source
    )

select *
from renamed

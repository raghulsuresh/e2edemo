with source as (

    select * from raw.AZURE_SQL_DB_PERSON.person
),
renamed as (

    select 
        title,
        suffix,
        rowguid,
        lastname,
        firstname,
        middlename,
        persontype,
        modifieddate,
        emailpromotion,
        businessentityid,
        GET(XMLGET(PARSE_XML(demographics), 'Gender'),'$')::varchar as gender,
        GET(XMLGET(PARSE_XML(demographics), 'HomeOwnerFlag'),'$')::int as houseownerflag, 
        GET(XMLGET(PARSE_XML(demographics), 'Occupation'),'$')::varchar as occupation, 
        GET(XMLGET(PARSE_XML(demographics), 'MaritalStatus'),'$')::varchar as maritalstatus, 
        GET(XMLGET(PARSE_XML(demographics), 'CommuteDistance'),'$')::varchar as commutedistance, 
        GET(XMLGET(PARSE_XML(demographics), 'Education'),'$')::varchar as education, 
        GET(XMLGET(PARSE_XML(demographics), 'NumberCarsOwned'),'$')::int as numbercarsowned, 
        GET(XMLGET(PARSE_XML(demographics), 'TotalChildren'),'$')::int as totalchildren, 
        GET(XMLGET(PARSE_XML(demographics), 'BirthDate'),'$')::varchar as birthdate, 
        GET(XMLGET(PARSE_XML(demographics), 'DateFirstPurchase'),'$')::varchar as datefirstpurchase
    from source
)

select * from renamed
        
with 

source as (

    select * from {{ source('gz_raw_data', 'product') }}

),

renamed as (

    select
        product_id,
        purchse_price AS purchase_price

    from source

)

select * from renamed

{{ config(materialized='view') }}

with source_data as (

    select product_id , product_name ,brand_id   from zone3_sales_data.product p

)

select *
from source_data
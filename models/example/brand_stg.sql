{{ config(materialized='view') }}

with source_data as (

    select brand_id,brand_name from zone3_sales_data.brand

)

select *
from source_data
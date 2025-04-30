
{{ config(materialized='table') }}

with source_data as (
    select br.brand_name,pr.product_name , pp.price
    from {{ ref('brand_stg') }} br
    join {{ ref ('product_stg') }} pr
    on pr.brand_id = br.brand_id
    join zone3_sales_data.product_prices pp on pp.product_id = pr.product_id
) 

select *
from source_data
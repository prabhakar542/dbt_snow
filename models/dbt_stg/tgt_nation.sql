{{ config(materialized='table') }}

WITH tb1 as(
    select 
    n_nationkey as nation_key,
    n_name as customer_nation
    
    from {{source('datafeed_shared_schema_dev','RAW_NATION')}})
select * from tb1

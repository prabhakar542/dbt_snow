{{ config(materialized='table',target_schema ='dbt_trgt') }}

WITH tb1  as(
 select *
     from {{source('datafeed_shared_schema','CUSTOMERS')}})
     select * from tb1

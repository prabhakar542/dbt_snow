{{ config(materialized='view') }}


WITH tb1  as(
 select *
     from {{source('datafeed_shared_schema','CUSTOMERS')}})
     select * from tb1

{{ config(materialized='table') }}

WITH tb1 as(
    select
    id,
    spent 
    from {{source('datafeed_shared_schema','customers')}})
select * from tb1
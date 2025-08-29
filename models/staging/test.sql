{{ config(materialized='table') }}

WITH tb1 as(
    select
    cusid,
    first_name,
    from {{ref('customers')}})
select * from tb1
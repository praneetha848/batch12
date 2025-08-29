
{{ config(
     materialized="table",
     post_hook="delete from  {{ this }} where id in (1,3,5,7)",
     
) }}

WITH tb1 as(
     select  * from {{ref('cust')}})
select * from tb1
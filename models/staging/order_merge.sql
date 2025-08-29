{{ config(
materialized="incremental",
unique_key ='id',
merge_exclude_columns=['user_id']
) }}
select * from {{source('datafeed_shared_schema','raw_orders')}}  limit 20

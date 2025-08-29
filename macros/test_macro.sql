{% macro test_macro(tablename) %}
  {% set column_filter = 'flag' %}
  
  select *
  from {{ tablename }}
  where {{ column_filter }} = 1

{% endmacro %}

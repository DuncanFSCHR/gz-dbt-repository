{% macro margin_percent(revenue,purchase_cost) %}
    safe_divide ({{ revenue }} - {{ purchase_cost }}, {{ revenue }})
{% endmacro %}
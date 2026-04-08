{% macro check_string_columns(model) %}
SELECT
    {% for col in adapter.get_columns_in_relation(model) %}
    {% if col.is_string() %}
    CASE WHEN {{ col.name }} IS NULL OR {{ col.name }} = '' THEN 'fail' ELSE 'pass' END AS {{ col.name }}_check,
    {% endif %}
    {% endfor %}
    1 AS dummy
FROM {{ model }}
WHERE {{ no_empty_strings(model) }}
{% endmacro %}
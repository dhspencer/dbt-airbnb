-- This test checks that the specified column in the model has a minimum row count greater than x.

{% test minimum_row_count (model, min_row_count) %}
    SELECT
    COUNT(*) AS row_count
    FROM {{ model }}
    HAVING COUNT(*) < {{ min_row_count }}
{% endtest %}
-- Macro is like a function where we can pass values instead of writing some kind of null check or positive value again and again ,we can directly create a macro for that,we can use custom package or create our own function(which basically check if it is NULL or NOT) based on that it returns value


{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{ model }} WHERE
    {% for col in adapter.get_columns_in_relation(model) %}
        {{ col.column }} IS NULL OR
    {% endfor %}
    FALSE
{% endmacro %}
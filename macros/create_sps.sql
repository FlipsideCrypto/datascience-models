{% macro create_sps() %}
    {% if target.database == 'datascience' %}
        CREATE SCHEMA IF NOT EXISTS _internal;
        {{ sp_create_prod_clone('_internal') }};
    {% endif %}
{% endmacro %}
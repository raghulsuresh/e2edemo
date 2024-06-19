{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- if custom_schema_name == None and node.resource_type in ['seed', 'model'] -%}
     {%- set error_message -%}
       {{ node.resource_type | capitalize }} '{{ node.unique_id }}' does not have a schema configured.
     {%- endset -%}
    {{ exceptions.raise_compiler_error(error_message) }}
    {%- endif -%}

    {%- set default_schema = target.schema -%}
    {%- set environment = env_var('DBT_ENV_NAME','NONE') -%}

        {%- if environment == 'CI' -%}

            {{ default_schema }}

        {%- else -%}

            {{ custom_schema_name | trim }}
        
        {%- endif -%}

{%- endmacro %}
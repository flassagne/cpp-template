{% if cookiecutter.project_kind == "executable" %}
add_executable({{ cookiecutter.target_name }})
{% elif cookiecutter.project_kind == "library" %}
add_library({{ cookiecutter.target_name }})
{% endif -%}

target_sources(
    {{ cookiecutter.target_name }}
        PRIVATE
        {{ cookiecutter.target_name }}.cpp
)

target_link_libraries(
    {{ cookiecutter.target_name }}
        PRIVATE
            project_options
)

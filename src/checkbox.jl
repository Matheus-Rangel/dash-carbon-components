# AUTO GENERATED FILE - DO NOT EDIT

export checkbox

"""
    checkbox(;kwargs...)

A Checkbox component.

Keyword arguments:
- `id` (String; required)
- `label` (String; required)
- `disabled` (Bool; optional)
- `value` (Bool; required)
- `title` (String; optional)
"""
function checkbox(; kwargs...)
        available_props = Symbol[:id, :label, :disabled, :value, :title]
        wild_props = Symbol[]
        return Component("checkbox", "Checkbox", "dash_carbon_components", available_props, wild_props; kwargs...)
end

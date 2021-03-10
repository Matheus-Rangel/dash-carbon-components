# AUTO GENERATED FILE - DO NOT EDIT

export radiobuttongroup

"""
    radiobuttongroup(;kwargs...)

A RadioButtonGroup component.

Keyword arguments:
- `legendText` (String; optional)
- `name` (String; optional)
- `radiosButtons` (optional): . radiosButtons has the following type: Array of lists containing elements 'labelText', 'value', 'id'.
Those elements have the following types:
  - `labelText` (String; optional)
  - `value` (String; optional)
  - `id` (String; optional)s
- `id` (String; optional)
- `value` (String; optional)
- `labelPosition` (a value equal to: 'left', 'right'; optional)
- `orientation` (a value equal to: 'horizontal', 'vertical'; optional)
- `disabled` (Bool; optional)
"""
function radiobuttongroup(; kwargs...)
        available_props = Symbol[:legendText, :name, :radiosButtons, :id, :value, :labelPosition, :orientation, :disabled]
        wild_props = Symbol[]
        return Component("radiobuttongroup", "RadioButtonGroup", "dash_carbon_components", available_props, wild_props; kwargs...)
end


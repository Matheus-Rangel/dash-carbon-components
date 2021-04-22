# AUTO GENERATED FILE - DO NOT EDIT

export radiobuttongroup

"""
    radiobuttongroup(;kwargs...)

A RadioButtonGroup component.
Radio Group Component
Keyword arguments:
- `legendText` (a list of or a singular dash component, string or number; optional): Provide a legend to the RadioButtonGroup input that you are
exposing to the user
- `name` (String; required): Specify the name of the underlying `<input>` nodes
- `radiosButtons` (optional): The radios buttons inside this group. radiosButtons has the following type: Array of lists containing elements 'label', 'value', 'id'.
Those elements have the following types:
  - `label` (String; optional)
  - `value` (String; optional)
  - `id` (String; optional)s
- `id` (String; optional): Specify a custom `id` for the radio group
- `value` (String; optional): The value selected
- `labelPosition` (a value equal to: 'left', 'right'; optional): Provide where label text should be placed
- `orientation` (a value equal to: 'horizontal', 'vertical'; optional): Provide where radio buttons should be placed
- `disabled` (Bool; optional): Specify whether the group is disabled
- `className` (String; optional): Provide an optional className to be applied to the container node
"""
function radiobuttongroup(; kwargs...)
        available_props = Symbol[:legendText, :name, :radiosButtons, :id, :value, :labelPosition, :orientation, :disabled, :className]
        wild_props = Symbol[]
        return Component("radiobuttongroup", "RadioButtonGroup", "dash_carbon_components", available_props, wild_props; kwargs...)
end


# AUTO GENERATED FILE - DO NOT EDIT

export checkbox

"""
    checkbox(;kwargs...)

A Checkbox component.
Checkbox Input
Keyword arguments:
- `id` (String; required): Provide an `id` to uniquely identify the Checkbox input
- `label` (a list of or a singular dash component, string or number; required): Provide a label to provide a description of the Checkbox input that you are
exposing to the user
- `hideLabel` (Bool; optional): Specify whether the label should be hidden, or not
- `disabled` (Bool; optional): Specify whether the Checkbox should be disabled
- `value` (Bool; optional): Specify whether the underlying input is checked
- `title` (String; optional): Specify a title for the <label> node for the Checkbox
- `style` (Dict; optional): The inline styles
- `className` (String; optional): Specify an optional className to be applied to the <label> node
"""
function checkbox(; kwargs...)
        available_props = Symbol[:id, :label, :hideLabel, :disabled, :value, :title, :style, :className]
        wild_props = Symbol[]
        return Component("checkbox", "Checkbox", "dash_carbon_components", available_props, wild_props; kwargs...)
end

